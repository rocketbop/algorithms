require_relative "./../../problems/integer_to_roman"

RSpec.describe IntegerToRoman do
  subject(:call) { described_class.new.call(integer) }

  let(:integer) { 3 }
  it "returns III" do
    expect(call).to eq("III")
  end
end
