class HomeController < ApplicationController
  def index
    @bookings = Booking.all
    @booking = Booking.new
  end
end
