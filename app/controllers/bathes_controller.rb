class BathesController < ApplicationController

  def index
    @bathes = Bath.includes(:user).order("created_at DESC")
  end

end
