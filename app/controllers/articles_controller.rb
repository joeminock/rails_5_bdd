class ArticlesController < ApplicationController
  def index
  end

  def new
    @article = article.new
  end
end
