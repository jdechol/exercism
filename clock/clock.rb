class Clock
  def initialize(hours, minutes)
    @hours = calculate_hours(hours, minutes)
    @minutes = calculate_minutes(minutes)
  end

  def self.at(hours, minutes)
    Clock.new(hours, minutes)
  end

  def +(addend_in_minutes)
    Clock.new(
      calculate_hours(@hours, @minutes + addend_in_minutes),
      calculate_minutes(@minutes + addend_in_minutes)
    )
  end

  def ==(other)
    to_s == other.to_s
  end

  def to_s
    format('%02d:%02d', @hours, @minutes)
  end

  private

  def calculate_hours(hours, minutes)
    hours_from_extra_minutes = minutes / 60
    (hours + hours_from_extra_minutes) % 24
  end

  def calculate_minutes(minutes)
    minutes % 60
  end
end

module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end
