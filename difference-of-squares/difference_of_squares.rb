module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end

class DifferenceOfSquares
  def initialize(number)
    @number = number
  end

  def difference
    (square_of_sum - sum_of_squares).abs
  end

  def square_of_sum
    sum = 0
    @number.times { |i| sum += i + 1 }
    p sum**2
    sum**2
  end

  def sum_of_squares
    sum = 0
    @number.times { |i| sum += (i + 1)**2 }
    sum
  end
end
