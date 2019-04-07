class Matrix
  def initialize(input)
    parse(input)
  end

  def parse(input)
    @parsed_array = input.strip.split(/\n/).map do |row|
      row.strip.split(/\s/).map(&:to_i)
    end
  end

  def rows
    parsed_array
  end

  def columns
    parsed_array.transpose
  end

  private

  attr_reader :parsed_array
end
