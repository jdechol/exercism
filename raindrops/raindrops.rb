module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end

class Raindrops
  @sound = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }

  def self.convert(drop)
    result = convert_helper(drop)
    result == '' ? drop.to_s : result
  end

  def self.convert_helper(drop)
    @sound.keys.map { |key| (drop % key).zero? ? @sound[key] : '' }.join
  end
end
