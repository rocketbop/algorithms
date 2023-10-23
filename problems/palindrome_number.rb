class PalindromeNumber
  def call(integer)
    string = integer.to_s
    string == string.reverse
  end
end
