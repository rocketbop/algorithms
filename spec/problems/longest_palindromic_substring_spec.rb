require_relative "./../../problems/longest_palindromic_substring"

RSpec.describe LongestPalindromicSubstring do
  it "returns one of the longest palindromes" do
    result = LongestPalindromicSubstring.new(:brute_force).call("babad")
    expect(%w[bab aba]).to include(result)
  end
end
