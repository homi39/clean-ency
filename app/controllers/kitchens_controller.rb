class KitchensController < ApplicationController

  def index
    @kitchens = Kitchen.includes(:user).order("created_at DESC")
  end

  def show
    @kitchen = Kitchen.find(params[:id])
  end

end
