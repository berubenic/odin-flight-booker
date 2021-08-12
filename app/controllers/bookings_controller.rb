class BookingsController < ApplicationController
    def new
        @booking = Booking.new()
        @flight = Flight.find(params[:flight_id].to_i)
        params[:number_of_passengers].to_i.times do |num|
            @booking.passengers.build
        end
        @passengers = @booking.passengers
    end

    def show
        booking = Booking.create(booking_params)
    end

    private

    def booking_params
        params.require(:booking).permit(:flight_id, :passengers_attributes => [:id, :name, :email])
    end
end