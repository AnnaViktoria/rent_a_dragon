class DragonsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]
  before_action :set_dragon, only: [:show, :destroy, :edit, :update]
  def index
    @dragons = Dragon.all
  end

  def show
    @reservation = Reservation.new
    @review = Review.new
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
    redirect_to dragons_path
  end

  private

  def set_dragon
    @dragon = Dragon.find(params[:id])
  end

  def dragon_params
    params.require(:dragon).permit(:name, :age, :country_of_origin, :location)
  end
end
