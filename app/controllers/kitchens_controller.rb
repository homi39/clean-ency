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

  def create
    @kitchen = Kitchen.new(kitchen_params)
    if @kitchen.save
      redirect_to kitchens_path
    else
      render :new
    end
  end

  private

  def kitchen_params
    params.permit(:title, :text).merge(user_id: current_user.id)
  end
  
  def move_to_index
    unless user_signed_in?
      redirect_to root_path
    end
  end
end
