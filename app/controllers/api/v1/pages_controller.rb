class Api::V1::PagesController < ApplicationController
  respond_to :json

  def show
    numbers_array = []
    page_num  = page_params[:page_num].to_i
    page_size = page_params[:page_size].to_i

    end_num   = page_num * page_size
    start_num = (end_num - page_size) + 1

    start_num.upto(end_num) do |i|
      numbers_array << Item.new(i)
    end

    render json: numbers_array, status: 200
  end

  private
  def page_params
    params.require(:page).permit(:page_size, :page_num)
  end
end
