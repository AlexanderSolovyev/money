class PlansController < ApplicationController
  before_action :plan_find, only: [:edit, :update, :destroy]
  def index
    @plans=Plan.all
  end
  def new
    @plan=Plan.new
  end
  def create
    @plan = Plan.create(plan_params)
    redirect_to plans_path
  end
  def edit
  end
  def update
    @plan.update_attributes(plan_params)
    redirect_to plans_path
  end
  def destroy
    @plan.destroy
    redirect_to plans_path
  end
  private
  def plan_params
    params.require(:plan).permit(:date, :type_id, :comment, :quality)
  end
  def plan_find
    @plan=Plan.find_by_id(params[:id])
  end
end
