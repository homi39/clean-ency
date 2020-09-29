class ArticlesController < ApplicationController
  def index
    @articles = Article.includes(:user).order("created_at DESC")
  end
  
  def show
  end

  def new
  end

  def edit
  end

end
