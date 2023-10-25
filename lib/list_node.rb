class ListNode
  attr_accessor :value, :next

  def initialize(value = 0, next_value = nil)
    @value = value
    @next = next_value
  end

  def self.array_to_linked_list(arr)
    dummy_head = ListNode.new(0)
    current = dummy_head
    arr.each do |val|
      current.next = ListNode.new(val)
      current = current.next
    end

    dummy_head.next
  end

  def self.to_array(head)
    result = []
    current = head

    while current
      result << current.value
      current = current.next
    end

    result
  end
end

class Year
  include Comparable

  def initialize(year)
    @year = year.to_i
  end

  def <=>(other)
    year <=> other.year
  end

  def to_s
    year.to_s
  end

  attr_reader :year
end
