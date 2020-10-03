class ToiletsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  
  def index
    @toilets = Toilet.includes(:user).order("created_at DESC")
  end

  def show
    @toilet = Toilet.find(params[:id])
    @tocomment = ToComment.new
    @tocomments = @toilet.to_comments.includes(:user)
  end

  def new
    @toilet = Toilet.new
  end

  def create
    @toilet = Toilet.new(toilet_params)
    if @toilet.save
      redirect_to toilets_path
    else
      render :new
    end
  end

  private

  def toilet_params
    params.permit(:title, :text).merge(user_id: current_user.id)
  end
  
  def move_to_index
    unless user_signed_in?
      redirect_to root_path
    end
  end
end
