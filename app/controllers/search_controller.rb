class SearchController < ApplicationController
  def search
    if params[:q]
      @articles = Article.search(params[:q])
    else
      @articles = []
    end
  end
end
