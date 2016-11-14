class Api::V1::PagesController < ApplicationController
  respond_to :json

  def show
    puts "show "
    numbers_array = ["Hello"]
    render json: numbers_array, status: 200
  end
end
