class CardsController < ApplicationController
  def index
    @cards = Card.includes(:user)
    @cards = Card.all.order(created_at: :desc)  #-- 時系列順に並べる
  end

  def new
    @card = Card.new
  end

  def create
    Card.create(card_params)
    redirect_to controller: :users, action: :show, id: current_user.id
  end

  def show
    @card = Card.find(params[:id])
  end

  def add
  end

  def edit
    @card = Card.find(params[:id])
  end

  def update
    card = Card.find(params[:id])
    card.update(card_params)
    redirect_to controller: :users, action: :show, id: current_user.id
  end

  def destroy
    card = Card.find(params[:id])
    card.destroy
    redirect_to controller: :users, action: :show, id: current_user.id
  end

  private
  def card_params
    params.require(:card).permit(:title, :author, :price, :publisher, :comment).merge(user_id: current_user.id)
  end
end
