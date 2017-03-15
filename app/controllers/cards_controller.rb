class CardsController < ApplicationController
  before_action :find_id, only: [:edit, :update , :destroy]
  def index 
    @cards=Card.all
  end

  def new
    @card=Card.new
  end

  def edit
  end

  def update
    @card.update_attributes card_params
    redirect_to cards_path
  end
  def create
    @card=Card.new(card_params)
    @card.save
    redirect_to cards_path
  end
  def destroy
    @card.destroy
    redirect_to cards_path
  end
  private
  def card_params
    params.require(:card).permit(:name,:balance)
  end
  def find_id
    @card=Card.find(params[:id])
  end
end
