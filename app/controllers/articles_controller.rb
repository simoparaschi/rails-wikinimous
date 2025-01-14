class ArticlesController < ApplicationController
  before_action :find_article, only: [:show]
  def index
    @articles = Article.all
  end

  def show
  end

  private

  def find_article
    @id = params[:id]
    @article = Article.find(@id)
  end
end
