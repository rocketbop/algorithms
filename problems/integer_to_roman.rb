class IntegerToRoman
  ROMAN_NUMERALS = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }.freeze
  def initialize; end

  def call(num)
    roman = ""

    ROMAN_NUMERALS.each do |symbol, value|
      while num >= value
        roman << symbol
        num -= value
      end
    end
    roman
  end
end
