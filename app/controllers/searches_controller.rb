class SearchesController < ApplicationController
  def index
    @subject_search_params = subject_search_params
    @teacher_search_params = teacher_search_params
    @searches = Subject.search(@search_params)
  end

  private

  def subject_search_params
    params.fetch(:search, {}).permit(:title)
  end

  def teacher_search_params
    params.fetch(:search, {}).permit(:name)
  end
end
