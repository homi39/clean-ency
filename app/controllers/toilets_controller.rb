class ToiletsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  
  def index
    @toilets = Toilet.includes(:user).order("created_at DESC")
  end

  def show
    @toilet = Toilet.find(params[:id])
  end

  private

  def move_to_index
    unless user_signed_in?
      redirect_to root_path
    end
  end
end
