require "sayanoyudokoro"
RSpec.describe Sayanoyudokoro::Congestion do
  it "returns correct keys" do
    expect(Sayanoyudokoro::Congestion.current_status.keys).to include(:degree, :time)
  end
end
