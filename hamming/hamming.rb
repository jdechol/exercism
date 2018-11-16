module BookKeeping
  VERSION = 3
end

module Hamming
  def self.compute(strand_a, strand_b)
    if strand_a.length != strand_b.length
      raise ArgumentError, 'Strings must be of equal length'
    end

    # count = 0
    # strand_a.each_char.with_index do |char, index|
    #   count += 1 if char != strand_b[index]
    # end
    # count
    #
    strand_a.length.times.count { |i| strand_a[i] != strand_b[i] }
  end
end
