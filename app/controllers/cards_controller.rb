class CardsController < ApplicationController
  def show
    @cards=Card.all
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
