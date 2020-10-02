class KitchensController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @kitchens = Kitchen.includes(:user).order("created_at DESC")
  end

  def show
    @kitchen = Kitchen.find(params[:id])
  end

  def new
    @kitchen = Kitchen.new
  end

  private

  def move_to_index
    unless user_signed_in?
      redirect_to root_path
    end
  end
end
