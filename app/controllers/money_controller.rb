class MoneyController < ApplicationController
  def index
    @cards=Card.all
    @trans=Tran.all
    @tran=Tran.new
  end
end
