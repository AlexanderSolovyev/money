class MoneyController < ApplicationController
  def index
    @cards=Card.all
    @trans=Tran.order(date: :desc).order(created_at: :desc).first(10)
    @tran=Tran.new
    @totals=Card.totals
  end
end
