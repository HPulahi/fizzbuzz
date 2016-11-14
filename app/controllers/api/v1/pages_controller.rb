class Api::V1::PagesController < ApplicationController
  respond_to :json

  def show
    
    page_size = page_params[:page_size].to_i
    numbers_array = []
    1.upto(page_size) do |i|
      numbers_array << i
    end
    render json: numbers_array, status: 200
  end

  private
  def page_params
    params.require(:page).permit(:page_size)
  end
end
