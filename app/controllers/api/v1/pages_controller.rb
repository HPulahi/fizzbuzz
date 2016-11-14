class Api::V1::PagesController < ApplicationController
  respond_to :json

  def show
    page = Page.for(page_params[:page_num], page_params[:page_size])
    render json: page, status: 200
  end

  private
  def page_params
    params.require(:page).permit(:page_size, :page_num)
  end
end
