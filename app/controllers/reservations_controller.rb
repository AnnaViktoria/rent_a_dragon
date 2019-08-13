class ReservationsController < ApplicationController

  before_action :set_reservation, only [:update, :edit, :destroy]

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.dragon = Dragon.find(params[:dragon_id])
    if @reservation.save
      redirect_to reservations_path(@reservation)
    else
      render :new
    end
  end

  def update
    @reservation = Reservation.new(reservation_params)
    @reservation.dragon = Dragon.find(params[:dragon_id])
    if @reservation.save
      redirect_to reservations_path(@reservation)
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
    params.require(:reservation).permit(:start_date, :end_date)

  end
end
