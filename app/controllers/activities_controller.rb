class ActivitiesController < ApplicationController
  def new
    @activity = Activity.new
    @activities = Activity.all
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.save
    redirect_to root_path
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])
    @activity.update(activity_params)
    redirect_to activity_path(@activity.id)
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to root_path
  end

  private
    def  activity_params
      params.require(:activity).permit(:name)
    end
end
