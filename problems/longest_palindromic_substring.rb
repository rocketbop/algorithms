class LongestPalindromicSubstring
  def initialize(approach)
    @approach = approach
  end

  def call(input_str)
    send(approach, input_str)
  end

  # O(n2) as we need to iterate through the inner array multiple times
  def brute_force(input_str)
    palindromes = Set[]

    (0...input_str.length).each do |start|
      (start...input_str.length).each do |finish|
        substring = input_str[start..finish]
        palindromes.add(substring) if palindrome?(substring)
      end
    end

    palindromes.max_by(&:length)
  end

  private

  def palindrome?(string)
    string == string.reverse
  end

  attr_reader :approach
end
