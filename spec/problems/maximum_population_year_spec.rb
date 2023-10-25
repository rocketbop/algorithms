require_relative "./../../problems/maximum_population_year"

RSpec.describe MaximumPopulationYear do
  subject(:call) { described_class.new.call(logs) }

  # let(:logs) { [[1950, 1961], [1960, 1971], [1970, 1981]] }

  let(:logs) do
    [[2008, 2026], [2004, 2008], [2034, 2035], [1999, 2050], [2049, 2050], [2011, 2035], [1966, 2033], [2044, 2049]]
  end
  it "runs the code" do
    expect(call).to eq(2011)
  end
end
