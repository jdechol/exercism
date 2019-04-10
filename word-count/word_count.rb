class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    words_in(phrase).each_with_object(Hash.new(0)) do |word, counts|
      counts[word.downcase] += 1
    end
  end

  private

  def words_in(phrase)
    phrase.strip.scan(/\b['\w]+\b/)
  end

  attr_reader :phrase
end
