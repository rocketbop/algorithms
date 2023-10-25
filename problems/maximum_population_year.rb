# You are given a 2D integer array logs where each logs[i] = [birthi, deathi]
# indicates the birth and death years of the ith person.
# The population of some year x is the number of people alive during that year.
# The ith person is counted in year x's population if x is in the inclusive range [birthi, deathi - 1].
# Note that the person is not counted in the year that they die.
#
# Return the earliest year with the maximum population.
class MaximumPopulationYear
  # @param Array[Array[Integer, Integer]] = [[1991, 2]]
  # Has O(n) complexity for a large set of logs
  # or O(n * m) complexity for a short set, where m is the range of years
  def call(logs)
    tally = Hash.new(0)

    logs.each do |log|
      (log[0]...log[1]).each { |year| tally[year] += 1 }
    end

    tally.min_by { |year, population| [-population, year] }[0]
  end
end
