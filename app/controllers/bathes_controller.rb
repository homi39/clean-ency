class BathesController < ApplicationController

  def index
    @bathes = Bath.includes(:user).order("created_at DESC")
  end

  def show
    @bath = Bath.find(params[:id])
  end

end
