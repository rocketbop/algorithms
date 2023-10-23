require_relative "./../../problems/palindrome_number"

RSpec.describe PalindromeNumber do
  subject(:call) { described_class.new.call(integer) }

  let(:integer) { 121 }

  it "returns true if the integer can be expressed as a string palindome" do
    expect(call).to eq(true)
  end

  context "when the integer is a minus number" do
    let(:integer) { -121 }

    it { is_expected.to eq(false) }
  end

  context "for integer is 10" do
    let(:integer) { 10 }

    it { is_expected.to eq(false) }
  end
end
