class ArticlesController < ApplicationController
  include ArticlesHelper
  before_action :set_article,  only: [:show, :edit, :update, :destroy]
  before_action :current_user
  def index
    @articles = Article.all
  end

  def show
  end

  def edit
  end

  def update
    @article.update(article_params)
    redirect_to articles_path
  end
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def destroy
    Article.find(params[:id]).destroy
    redirect_to articles_path
  end


end
