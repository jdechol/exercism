class HighScores

  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    scores.last
  end

  def personal_best
    scores.max
  end

  def personal_top_three
    sorted_scores ||= scores.sort
    sorted_scores.reverse.take 3
  end

  attr_reader :sorted_scores
end
