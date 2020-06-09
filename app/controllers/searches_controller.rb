class SearchesController < ApplicationController
  def index
    @search_params = search_params
    @searches = Subject.joins(:teacher).search(@search_params)
  end

  private

  def search_params
    params.fetch(:search, {}).permit(:title,:name)
  end
end
