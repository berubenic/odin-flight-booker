class BookingsController < ApplicationController
    def new
        @booking = Booking.new()
        @flight = Flight.find(params[:flight_id])
        params[:number_of_passengers].to_i.times do |num|
            @booking.passengers.build
        end
        @passengers = @booking.passengers
    end

    def create
        binding.pry
        @booking = Booking.create(booking_params)
        respond_to do |format|
            if Booking.exists?(@booking.id)
                format.html { redirect_to @booking }
            else
                format.html { render :new }
            end
        end
    end

    def show
        @booking = Booking.find(params[:id])
        @flight = @booking.flight
        @passengers = @booking.passengers
    end

    private

    def booking_params
        params.require(:booking).permit(:flight_id, :passengers_attributes => [:id, :name, :email])
    end
end