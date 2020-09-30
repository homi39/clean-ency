class ToiletsController < ApplicationController

  def index
    @toilet = Toilet.includes(:user).order("created_at DESC")
  end

end
