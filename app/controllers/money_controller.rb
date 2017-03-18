class MoneyController < ApplicationController
  def index
    @cards=Card.all
    @trans=Tran.all
    @tran=Tran.new
    @totals=Card.totals
  end
end
