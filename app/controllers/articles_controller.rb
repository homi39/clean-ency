class ArticlesController < ApplicationController
  def index
    @articles = Article.includes(:user)
  end
  
  def show
  end

  def new
  end

  def edit
  end

end
