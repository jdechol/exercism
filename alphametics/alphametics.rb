class Alphametics
  def self.solve(input)
    parse(input)
    find_solution
  end

  private

  def self.find_solution
    letters_to_numbers = {}
    @letters.each do |letter|
      letters_to_numbers[letter] = 0
    end
  end

  def self.parse(input)
    @parts = input.delete(' ').split(/\+|==/)
    @letters = input
               .delete(' ')
               .delete('+')
               .delete('=')
               .split(//)
               .uniq
               .join('')
  end
end
