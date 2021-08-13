# frozen_string_literal:true

class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
    @passengers = @booking.passengers
    params[:number_of_passengers].to_i.times do |_num|
      @passengers.build
    end
  end

  def create
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
    params.require(:booking).permit(:flight_id, passengers_attributes: %i[id name email])
  end
end
