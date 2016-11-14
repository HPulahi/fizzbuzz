require 'rails_helper'

RSpec.describe Api::V1::PagesController, type: :controller do
  before(:each) { request.headers['Accept'] = "application/vnd.marketplace.v1" }
  let(:params) { FactoryGirl.attributes_for(:params, page_size: 10) }

  describe "GET #show" do

    before(:each) do
      get :show, params: { page: params }, format: :json
    end

    subject { JSON.parse(response.body, symbolize_names: true) }

    it "returns an array" do
      expect(subject).to be_an(Array)
    end

    it "returns the user defined quantity of items" do
      expect(subject.size).to eq(params[:page_size])
    end

    it "returns an array of Hashes" do
      expect(subject.first).to be_an(Hash)
      expect(subject).to include({value: 1, result: nil})
      expect(subject).to include({value: 3, result: "Fizz"})
      expect(subject).to include({value: 5, result: "Buzz"})
    end

  end

end
