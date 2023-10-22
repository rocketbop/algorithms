require_relative "./../../problems/add_two_numbers"
require_relative "./../../lib/list_node"

RSpec.describe AddTwoNumbers do
  describe "#one" do
    subject(:run) { described_class.new.one(l1, l2) }
    let(:l1) { ListNode.array_to_linked_list([2, 4, 9]) }
    let(:l2) { ListNode.array_to_linked_list([5, 6, 4, 9]) }

    it { is_expected.to eq([7, 0, 4, 0, 1]) }
  end

  describe "#two" do
    subject(:run) { described_class.new.two(l1, l2) }
    let(:l1) { ListNode.array_to_linked_list([2, 4, 9]) }
    let(:l2) { ListNode.array_to_linked_list([5, 6, 4, 9]) }

    it { is_expected.to eq([7, 0, 4, 0, 1]) }
  end
end
