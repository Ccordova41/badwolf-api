class Api::DoctorsController < ApplicationController
  def index
    @resp = Faraday.get 'https://api.giphy.com/v1/gifs/search' do |req|
      req.params['api_key'] = 'u8JAYlLsrI1EVCrWpjw0GyjTiWQAbGgy'
      req.params['q'] = 'doctorwho'
      req.params['limit'] = 100
    end
    body_hash = JSON.parse(@resp.body)
    @doctors = body_hash["data"].sample(10)
    render json: @doctors
  end

end
