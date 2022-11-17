class SearchService

  def initialize(params = {})
    @search_query = params[:search_query]
  end

  def call
    url = URI("https://streaming-availability.p.rapidapi.com/search/basic?country=us&service=netflix&type=movie&genre=18&page=1&output_language=en&language=en")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    # request["X-RapidAPI-Key"] = ENV['X_RAPID_API_KEY']
    request["X-RapidAPI-Key"] = '34294c9e0bmshe745f57402b9ce1p189db0jsn7f4ed1564402'
    request["X-RapidAPI-Host"] = 'streaming-availability.p.rapidapi.com'

    response = http.request(request)

    return OpenStruct.new(success?: true, payload: response)
  end
end