class AccountsController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = User.find(current_user.id)
    @dragons = Dragon.where(user_id: current_user.id)
    @reservations = Reservation.where(user_id: current_user.id)
  end
end
