class AccountsController < ApplicationController
  before_action :authenticate_user!
  def index
    @reservations = current_user.reservations
    @dragons = Dragon.where(user_id: current_user.id)
  end

end
