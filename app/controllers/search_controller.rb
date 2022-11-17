class SearchController < ApplicationController
  def search; end

  def submit_search
    user_search_query = params['search_query']

    response = SearchService.new(search_query: user_search_query).call

    data = JSON.parse(response.payload.read_body)

    @movies = data['results']
  end
end