class FlightsController < ApplicationController
    def index
        if params[:flight_search].present?
            start_airport = params[:flight_search][:start_airport_id]
            end_airport = params[:flight_search][:end_airport_id]            
            @flights = Flight.where("start_airport_id = :start_airport_id and
                                     end_airport_id = :end_airport_id", 
                                    { start_airport_id: start_airport, 
                                        end_airport_id: end_airport })
        end
    end
end