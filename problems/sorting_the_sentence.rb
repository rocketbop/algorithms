# A sentence is a list of words that are separated by a single space with no leading or trailing spaces.
# Each word consists of lowercase and uppercase English letters.
# A sentence can be shuffled by appending the 1-indexed word position to each word
# and then rearranging the words
#
# Given a shuffled sentence s containing no more than 9 words, reconstruct and return the original sentence.
class SortingTheSentence
  def initialize(version: :version1)
    @version = version
  end

  attr_reader :version

  def call(*params)
    send(version, *params)
  end

  def version1(sentence)
    hash = {}

    sentence.scan(/\S+/).each do |word|
      hash[word[-1].to_i] = word[0...-1]
    end

    ordered_words = []
    hash.size.times { |n| ordered_words << hash[n + 1] }
    ordered_words.join(" ")
  end

  def version2(sentence)
    hash = {}

    sentence.scan(/\S+/).each do |word|
      hash[word[-1].to_i] = word[0...-1]
    end

    new_sentence = ""

    hash_size = hash.size
    hash_size.times do |n|
      if n == hash_size - 1
        new_sentence.concat(hash[n + 1])
      else
        new_sentence.concat(hash[n + 1], " ")
      end
    end

    new_sentence
  end
end
