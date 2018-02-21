class DoctorsController < ApplicationController
  def index
    @resp = Faraday.get 'https://api.giphy.com/v1/gifs/search' do |req|
      req.params['api_key'] = 'o5nM6wKjgx6DAHYh9Hmrkp46osWK7CSe'
      req.params['q'] = 'doctorwho'
      req.params['limit'] = 100
    end
    body_hash = JSON.parse(@resp.body)
    @doctors = body_hash["data"].sample(15)
    render json: @doctors
  end

end
