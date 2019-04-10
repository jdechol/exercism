class Phrase
  def initialize(sentence)
    @sentence = sentence
  end

  def word_count
    words_in(sentence).each_with_object(Hash.new(0)) do |word, counts|
      counts[word.downcase] += 1
    end
  end

  private

  def words_in(sentence)
    sentence.strip.scan(/\b['\w]+\b/)
  end

  attr_reader :sentence
end
