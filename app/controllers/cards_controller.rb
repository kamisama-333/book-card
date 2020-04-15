class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def new
    @card = Card.new
  end

  def create
    Card.create(card_params)
    redirect_to root_path
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
    redirect_to root_path
  end

  def destroy
    card = Card.find(params[:id])
    card.destroy
    redirect_to root_path
  end

  private
  def card_params
    params.require(:card).permit(:title, :author, :price, :publisher, :comment)
  end
end
