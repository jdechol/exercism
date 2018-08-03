module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end

class Grains
  NUM_SQUARES = 64

  def self.square(num)
    raise ArgumentError if num > 64 || num < 1

    2**(num - 1)
  end

  def self.total
    2**NUM_SQUARES - 1
  end
end
