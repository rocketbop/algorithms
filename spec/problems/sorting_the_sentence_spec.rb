require_relative "./../../problems/sorting_the_sentence"

RSpec.describe SortingTheSentence do
  subject(:call) { described_class.new(version:).call(sentence) }

  let(:sentence) { "is2 sentence4 This1 a3" }

  describe "version1" do
    let(:version) { :version1 }

    it "returns the sentence in order of the trailing indicies" do
      expect(call).to eq("This is a sentence")
    end
  end

  describe "version1" do
    let(:version) { :version2 }

    it "returns the sentence in order of the trailing indicies" do
      expect(call).to eq("This is a sentence")
    end
  end
end
