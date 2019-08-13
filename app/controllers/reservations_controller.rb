class ReservationsController < ApplicationController

  before_action :set_reservation, only: [:update, :edit, :destroy]

  def dashboard
    @reservations = current_user.reservations
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.dragon = Dragon.find(params[:dragon_id])
    @reservation.user = current_user
    if @reservation.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def update
    if @reservation.update(reservation_params)
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  def edit
  end

  def destroy
    @reservation.destroy
    redirect_to  accounts_path
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)

  end
end
