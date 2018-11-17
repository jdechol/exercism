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
    hours_string = format_two_digits(@hours)
    minutes_string = format_two_digits(@minutes)
    "#{hours_string}:#{minutes_string}"
  end

  private

  def calculate_hours(hours, minutes)
    hours_from_extra_minutes = minutes / 60
    (hours + hours_from_extra_minutes) % 24
  end

  def calculate_minutes(minutes)
    minutes % 60
  end

  def format_two_digits(num)
    return "00" if num == 0

    num < 10 ? "0#{num}" : "#{num}"
  end
end

module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end
