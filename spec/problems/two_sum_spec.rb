require_relative "./../../problems/two_sum"

RSpec.describe TwoSum do
  let(:nums) { [2, 7, 11, 15] }
  let(:target) { 9 }

  describe ".brute_force" do
    subject(:brute_force) { described_class.brute_force(nums, target) }

    it "returns the indices for the values that add up to the target" do
      expect(brute_force).to eq([0, 1])
    end

    context "when the nums is not sorted" do
      let(:nums) { [15, 7, 11, 2] }

      it "functions as expected" do
        expect(brute_force).to eq([1, 3])
      end
    end
  end

  describe ".with_map" do
    subject(:with_map) { described_class.with_map(nums, target) }

    it "returns the indices for the values that add up to the target" do
      expect(with_map).to eq([0, 1])
    end
  end
end
