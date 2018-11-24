class Acronym
  def self.abbreviate(str)
    delimiters = [' ', '-']
    str.split(Regexp.union(delimiters)).map{ |word| word[0]&.upcase }.join
  end
end
