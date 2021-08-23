class ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new

  end

  def create
    @article = Article.new(params.require[:article].permti(:title, :description))
    @article = Article.save
    redirect_to article_path(@article)
    #redirect_to @article --- can also be used
  end

end
