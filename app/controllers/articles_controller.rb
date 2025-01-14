class ArticlesController < ApplicationController
  before_action :find_article, only: [:show]
  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @new_article = Article.new
  end

  def create
    @new_article = Article.new(form_params)
    @new_article.save
    redirect_to articles_path
  end

  def edit
  end

  private

  def find_article
    @id = params[:id]
    @article = Article.find(@id)
  end

  def form_params
    params.require(:article).permit(:title, :content)
  end
end
