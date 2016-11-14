require 'rails_helper'

RSpec.describe Page, type: :model do
  it "allows reading and writing of :page_size" do
    subject.page_size = 100
    expect(subject.page_size).to eq(100)
  end
end
