# frozen_string_literal: true
class NhtsaController < ApplicationController
  def retrieveData
    require 'open-uri'
    require 'json'

    # Create Data Storage
    storage = {}

    # Set Variable
    user_input = input

    make_id = user_input[:make_id]
    year = user_input[:year]

    begin
    response = open("https://vpic.nhtsa.dot.gov/api/vehicles/GetModelsForMakeIdYear/makeId/#{make_id}/modelyear/#{year}?format=json")
    rescue OpenURI::HTTPError => error
      response = error.io
    end

    response_status = response.status[0]

    if response_status == '200'
      response_body = response.read
      data_hash = JSON.parse(response_body)
      storage['results'] = data_hash['Results']
    end

    render json: storage
  end

  def input
    params.require(:user_input)
          .permit(:year, :make_id)
  end
end
