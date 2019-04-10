class Phrase
  attr_reader :word_count

  def initialize(words)
    @word_count = Hash.new(0)
    words.strip.scan(/\b['\w]+\b/).each do |word|
      word_count[word.downcase] += 1
    end
  end
end
