class ToiletsController < ApplicationController

  def index
    @toilets = Toilet.includes(:user).order("created_at DESC")
  end

  def show
    @toilet = Toilet.find(params[:id])
  end

end
