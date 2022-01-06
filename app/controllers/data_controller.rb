class DataController < ApplicationController
  def index
  end

  def show
  end

  def inflationpullEU
    uri = URI(https://www.statbureau.org/en/european-union/monthly-inflation-current-year-mom.png?width=width=500&height=250&chartType=Column&showTitle=True)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true

    request = Net::HTTP::Post.new(uri.path, {'Content-Type' => 'application/json'})

    request.body = {} # SOME JSON DATA e.g {msg: 'Why'}.to_json

    response = http.request(request)

    body = JSON.parse(response.body) # e.g {answer: 'because it was there'}
  end
end
