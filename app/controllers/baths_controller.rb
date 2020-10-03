class BathsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  
  def index
    @baths = Bath.includes(:user).order("created_at DESC")
  end

  def show
    @bath = Bath.find(params[:id])
    @bacomment = BaComment.new
    @bacomments = @bath.ba_comments.includes(:user)
  end

  def new
    @bath = Bath.new
  end

  def create
    @bath= Bath.new(bath_params)
    if @bath.save
      redirect_to bathes_path
    else
      render :new
    end
  end

  private

  def bath_params
    params.permit(:title, :text).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to root_path
    end
  end
end
