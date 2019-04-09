class Phrase
  attr_reader :word_count

  def initialize(words)
    @word_count = Hash.new(0)
    words.strip.split(/[^'\w]+/).each do |word|
      word_count[strip(word.downcase)] += 1
    end
  end

  private

  def strip(word)
    result = word
    result.slice!(0) if result[0] == "'" || result[0] == '"'
    result.slice!(result.length-1) if result[result.length - 1] == "'" || result[result.length - 1] == '"'
    result
  end
end
