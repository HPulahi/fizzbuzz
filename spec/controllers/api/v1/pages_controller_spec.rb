require 'rails_helper'

RSpec.describe Api::V1::PagesController, type: :controller do
  before(:each) { request.headers['Accept'] = "application/vnd.marketplace.v1" }

  describe "GET #show" do
    before(:each) do
      get :show, format: :json
    end

    it "returns an array" do
      response_body = JSON.parse(response.body, symbolize_names: true)
      expect(response_body).to be_an(Array)
    end

    it "contains 100 values" do
      response_body = JSON.parse(response.body, symbolize_names: true)
      expect(response_body.size).to eq(100) 
    end

  end

end
