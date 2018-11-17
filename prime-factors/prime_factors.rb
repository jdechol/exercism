class PrimeFactors
  def initialize(number)
    @number = number
    @factors = []
  end

  def self.for(num)
    PrimeFactors.new(num).all_factors
  end

  def all_factors
    collect_all(2)
    root =  Math.sqrt(number)

    3.step(root, 2) do |index|
      collect_all(index)
    end

    factors.push(number) if number > 2
    factors
  end

  private

  def collect_all(factor)
    while divisible_by(factor)
      factors.push(factor)
      @number /= factor
    end
  end

  def divisible_by(factor)
    number % factor == 0
  end

  attr_reader :number, :factors
end
