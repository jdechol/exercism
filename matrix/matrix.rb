class Matrix
  def initialize(input)
    @matrix = input.strip.split(/\n/).map do |row|
      row.strip.split(/\s/).map(&:to_i)
    end
  end

  def rows
    matrix
  end

  def columns
    matrix.transpose
  end

  private

  attr_reader :matrix
end
