class HomesController < ApplicationController
  def top
  @items = Item.all

  @items = @items.where('title LIKE ?', "%#{params[:search]}%") if params[:search].present?
  end
  
end
