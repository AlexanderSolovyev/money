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
  def report
    @date=Date.today
  end
  def report_date
    @date=params.class
    @date1=[params['per(1i)'].to_i,params['per(2i)'].to_i,params['per(3i)'].to_i]
    render :report
  end
  private
  def plan_params
    params.require(:plan).permit(:date, :type_id, :comment, :quality)
  end
  def date_params
    params.require(:period).permit(:date)
  end
  def plan_find
    @plan=Plan.find_by_id(params[:id])
  end
end
