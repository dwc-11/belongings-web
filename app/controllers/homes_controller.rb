class HomesController < ApplicationController
  def top
  @activity = Activity.all


  end


  def search
    # @items = Activity.joins(:items,:relations).search()
    @activity = Activity.search(params[:keyword])
    @keyword = params[:keyword]
    # binding.pry
    render "top"
  end
end
