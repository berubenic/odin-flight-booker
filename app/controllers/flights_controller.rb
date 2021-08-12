class FlightsController < ApplicationController
    def index
        if params[:flight_search]
            @flight_search ||= FlightSearch.new(flight_search_params)
            @flight_search.date = convert_dates_to_datetime(params[:flight_search][:date])
            @flight_search.number_of_passengers = params[:flight_search][:number_of_passengers]
            respond_to do |format|
                if @flight_search.valid?
                    @flights = Flight.where("start_airport_id = :start_airport_id and
                                         end_airport_id = :end_airport_id and start_datetime >= :date",
                                        { start_airport_id: params[:flight_search][:start_airport_id], 
                                            end_airport_id: params[:flight_search][:end_airport_id],
                                            date: @flight_search.date })
                    unless @flights.present?
                        flash.now[:notice] = "No matching flights available"
                        format.html{render 'index' }
                    end
                    flash.now[:notice] = "Flights found: "
                    format.html{render 'index' }
                else
                    flash.now[:notice] = "No matching flights available"
                    format.html{render 'index' }
                end
            end 
        else
            @flight_search = FlightSearch.new
            render 'index'
        end
    end

    private

    def flight_search_params
        params.require(:flight_search).permit(:number_of_passengers, :date, :start_airport_id, :end_airport_id)
    end

    def convert_dates_to_datetime(date)
       if date.present?
            Date.parse(date)
       else
            Date.today
       end
    end
end