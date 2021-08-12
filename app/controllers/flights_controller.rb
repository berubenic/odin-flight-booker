class FlightsController < ApplicationController
    def index
        @flight_search = FlightSearch.new
       
        if params[:flight_search].present?
            date = convert_dates_to_datetime(params[:flight_search][:date]) if params[:flight_search][:date].present?          
            @flight_search = flight_search_params(@flight_search, params[:flight_search], date)
            @number_of_passengers = params[:flight_search][:number_of_passengers]

            
            respond_to do |format|
                if @flight_search.valid?
                    start_airport = params[:flight_search][:start_airport_id]
                    end_airport = params[:flight_search][:end_airport_id]
                    @flights = Flight.where("start_airport_id = :start_airport_id and
                                         end_airport_id = :end_airport_id and start_datetime >= :date",
                                        { start_airport_id: start_airport, 
                                            end_airport_id: end_airport,
                                            date: date })
                    unless @flights.present?
                        flash.now[:notice] = "No matching flights available"
                    end
                    format.html{render 'index' }
                else
                    format.html{render 'index' }
                end
            end                
        end
    end

    private

    def flight_search_params(flight_search, params, date)
        flight_search.date = date
        flight_search.number_of_passengers = params[:number_of_passengers]
        flight_search.start_airport_id = params[:start_airport_id]
        flight_search.end_airport_id = params[:end_airport_id]
        flight_search
    end

    def convert_dates_to_datetime(date)
        Date.parse(date)
    end
end