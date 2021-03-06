class BookingsController < ApplicationController
  before_action :set_booking, only: [:destroy]

  def new
    @booking = Booking.new
  end

  
  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to request.referrer, notice: "Reserva realizada com sucesso!"
    else
      redirect_to request.referrer, alert: "Erro ao realizar reserva. Tente novamente mais tarde."
    end
  end

  def destroy
    @booking.destroy

    redirect_to root_path, notice: "Reserva excluída com sucesso!"
  end

  private
  
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booking_params
      params.require(:booking).permit(:interval, :name)
    end
end
