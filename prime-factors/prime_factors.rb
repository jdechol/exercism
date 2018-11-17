class PrimeFactors
  def self.for(number)
    data = self.remove_factors_of(2, number)
    number = data[:number]
    factors = data[:factors]

    square_root =  [Math.sqrt(number).to_i, 3].max

    3.step(square_root, 2) do |index|
      data = self.remove_factors_of(index, number)
      number = data[:number]
      factors = factors.concat(data[:factors])
    end

    factors.push(number) if number > 2

    factors
  end

  def self.remove_factors_of(factor, number)
    factors = []

    while number % factor == 0
      factors.push(factor)
      number /= factor
    end

    { number: number, factors: factors }
  end
end
