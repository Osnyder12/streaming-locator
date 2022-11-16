class SearchController < ApplicationController
  def search; end

  def submit_search
    user_search_query = params['search_query']
  end
end