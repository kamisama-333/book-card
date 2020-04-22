class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @cards = @user.cards.order(created_at: :desc).page(params[:page]).per(10)
  end
end
