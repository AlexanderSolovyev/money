class TypesController < ApplicationController
  before_action :find_type, only: [:edit, :update, :destroy]
  def index
    @type=Type.all
  end

  def new
    @type=Type.new
  end

  def edit
  end
  def create
    @type=Type.new(type_params)
    @type.save
    redirect_to types_path
  end
  def update
    @type.update_attributes(type_params)
    redirect_to types_path
  end
  def destroy
    @type.destroy
    redirect_to types_path
  end
  private
  def find_type
    @type=Type.find(params[:id])
  end
  def type_params
    params.require(:type).permit(:operation,:debet)
  end
end
