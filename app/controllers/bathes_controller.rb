class BathesController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  
  def index
    @bathes = Bath.includes(:user).order("created_at DESC")
  end

  def show
    @bath = Bath.find(params[:id])
  end

  def new
    @bath = Bath.new
  end

  private

  def move_to_index
    unless user_signed_in?
      redirect_to root_path
    end
  end
end
