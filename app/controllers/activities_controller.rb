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
  end

  def destroy
  end

  private
    def  activity_params
      params.require(:activity).permit(:name)
    end
end
