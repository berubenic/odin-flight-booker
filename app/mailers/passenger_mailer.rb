class PassengerMailer < ApplicationMailer
  def booking_confirmed_email(passenger)
    @passenger = passenger
    mail(to: passenger.email, subject: 'Flight Booked!')
  end
end
