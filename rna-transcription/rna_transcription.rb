module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end

class Complement
  COMPLEMENTS = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(strand)
    strand.chars.map { |nucleotide|
      return '' unless COMPLEMENTS[nucleotide]
      COMPLEMENTS[nucleotide]
    }.join
  end
end
