require "sayanoyudokoro"
RSpec.describe Sayanoyudokoro::Congestion do
  it "returns correct keys" do
    puts Sayanoyudokoro::Congestion.current_status
    expect(Sayanoyudokoro::Congestion.current_status.keys).to include(:degree, :time)
  end
end
