class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :delete]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(articles_params)
    @article.save

    redirect_to root_path
  end

  def edit
  end

  def update
    @article.update(articles_params)

    redirect_to root_path
  end

  def delete
    @article.destroy

    redirect_to root_path
  end

  private

  def articles_params
    params.require(:article).permit(:title, :content)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
