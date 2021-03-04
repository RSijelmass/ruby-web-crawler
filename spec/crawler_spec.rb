require_relative "../crawler"

RSpec.describe Crawler do
  it "should test methods in Crawler" do
    expect(Crawler.some_method).to eq "success"
  end
end
