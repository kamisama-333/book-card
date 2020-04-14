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
  end

  def add
  end

  def edit
  end

  private
  def card_params
    params.require(:card).permit(:title)
  end
end
