class Api::V1::PagesController < ApplicationController
  respond_to :json

  def show
    numbers_array = []
    1.upto(100) do |i|
      numbers_array << i
    end
    render json: numbers_array, status: 200
  end
end
