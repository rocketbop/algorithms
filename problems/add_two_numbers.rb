require_relative "./../lib/list_node"

class AddTwoNumbers
  # @param [ListNode] the head node of the first list
  # @param [ListNode] the head node of the second list
  def one(list1, list2)
    (build_integer(list1) + build_integer(list2)).to_s.chars.reverse.map(&:to_i)
  end

  def two(list1, list2)
    carry = 0
    dummy_head = ListNode.new(0)
    current = dummy_head

    while list1 || list2
      x = list1&.value || 0
      y = list2&.value || 0

      sum = x + y + carry
      carry = sum / 10
      current.next = ListNode.new(sum % 10)
      current = current.next

      list1 = list1.next if list1
      list2 = list2.next if list2
    end

    current.next = ListNode.new(carry) if carry.positive?

    ListNode.to_array(dummy_head.next)
  end

  private

  def build_integer(list)
    string = list.value.to_s
    current = list
    loop do
      current = current.next
      string.concat(current&.value&.to_s)
      break unless current.next
    end
    string.reverse.to_i
  end
end
