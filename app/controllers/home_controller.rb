class HomeController < ApplicationController
  def index
    if params[:category].blank?
      @articles = Article.all
    else
      @articles = Article.where(category_id: params[:category])
    end
  end
end
