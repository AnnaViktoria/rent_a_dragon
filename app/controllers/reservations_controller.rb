class ReservationsController < ApplicationController

  before_action :set_reservation, only [:update, :edit, :destroy]

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to reservation_path(reservation_params)
    else
      render :new
    end
  end

  def update
    if @reservation.update(reservation_params)
      redirect_to reservation_path(reservation_params)
    else
      render :update
    end
  end

  def edit
  end

  def destroy
    @reservation.destroy
    redirect_to reservations_path
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :dragon_id, :user_id)

  end

end






