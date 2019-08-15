class DragonsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]
  before_action :set_dragon, only: [:show, :destroy, :edit, :update]
  def index
    @dragons = Dragon.all

    @markers = @dragons.map do |dragon|
      {
        lat: dragon.latitude,
        lng: dragon.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { dragon: dragon })
      }
    end
  end

  def show
    @reservation = Reservation.new
    @review = Review.new
    set_unavailable_dates
  end

  def new
    @dragon = Dragon.new
  end

  def create
    @dragon = Dragon.new(dragon_params)
    @dragon.user = current_user
    if @dragon.save
      redirect_to dragon_path(@dragon)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @dragon.user = current_user
    @dragon.update(dragon_params)
    redirect_to dragons_path(@dragon)
  end

  def destroy
    @dragon.destroy
    redirect_to accounts_path
  end

  private

  def set_dragon
    @dragon = Dragon.find(params[:id])
  end

  def dragon_params
    params.require(:dragon).permit(:name, :age, :country_of_origin, :location, :price)
  end

  def set_unavailable_dates
    reservations = current_user.reservations
    @unavailable_dates = []
    reservations.each do |reservation|
      (reservation.start_date .. reservation.end_date).to_a.each do |date|
          @unavailable_dates << date.to_s
      end
    end
  end
end
