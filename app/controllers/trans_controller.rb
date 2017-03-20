class TransController < ApplicationController
  before_action :find_tran, only: [:edit, :update, :destroy]
  def index
    @trans=Tran.all
  end
  def new
    @tran=Tran.new
  end
  def edit
  end
  def update
    @quality=@tran.quality
   if @tran.update_attributes(tran_params)
    @uality=@tran.quality-@quality
    card=Card.find_by_id(@tran.card_id)
    card.balance_change(@uality)
    redirect_to trans_path
   else
     render :edit
   end
  end

  def create 
   @tran=Tran.new(tran_params)
   if @tran.save
     card=Card.find_by_id(@tran.card_id)
     card.balance_change (@tran.quality)
      redirect_to root_path
   else
     render :edit
   end
  end
  def destroy
    @tran.destroy
    redirect_to trans_path
  end
  private
  def tran_params
    params.require(:tran).permit(:date,:quality,:type_id,:card_id)
  end
  def find_tran
    @tran=Tran.find(params[:id])
  end
end
