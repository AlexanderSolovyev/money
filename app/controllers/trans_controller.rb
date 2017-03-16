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
   @tran.update_attributes(tran_params)
   redirect_to trans_path
  end

  def create 
   @tran=Tran.new(tran_params)
   if @tran.save
      redirect_to trans_path
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
