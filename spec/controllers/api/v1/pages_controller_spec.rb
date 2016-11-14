require 'rails_helper'

RSpec.describe Api::V1::PagesController, type: :controller do
  before(:each) { request.headers['Accept'] = "application/vnd.marketplace.v1" }
  let(:params) { FactoryGirl.attributes_for(:params, page_size: 10) }

  describe "GET #show" do
    before(:each) do
      get :show, params: { page: params }, format: :json
    end

    it "returns an array" do
      response_body = JSON.parse(response.body, symbolize_names: true)
      expect(response_body).to be_an(Array)
    end

    it "returns the user defined quantity of items" do
      response_body = JSON.parse(response.body, symbolize_names: true)
      expect(response_body.size).to eq(params[:page_size])
    end

  end

end
