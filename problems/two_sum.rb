class TwoSum
  # This has a BigO notation of O(n2) as we iterate
  # through a nested loop, and the worst case is that we iterate
  # n * n times, finding the correct pair on the very last computation
  def self.brute_force(nums, target)
    nums.each_with_index do |num, index|
      nums.each_with_index do |inner_num, inner_index|
        return [index, inner_index] if num + inner_num == target
      end
    end
  end

  # This has O(n) Big O Notation because we iterate through
  # the array input once as the worst case
  def self.with_map(nums, target)
    hash = {}
    nums.each_with_index do |num, index|
      compliment = target - num
      already_seen_at = hash[compliment]

      return [already_seen_at, index] if already_seen_at

      hash[num] = index
    end
  end
end
