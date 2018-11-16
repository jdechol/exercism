class Clock
  def initialize(hours, minutes)
    @hours = hours
    @minutes = minutes
  end

  def self.at(hours, minutes)
    Clock.new(hours, minutes)
  end

  def lead_with_zero(num)
    num < 10 ? "0#{num}" : "#{num}"
  end

  def to_s
    hours_string = lead_with_zero(hours)
    minutes_string = lead_with_zero(minutes)
    "#{hours_string}:#{minutes_string}"
  end

  private

  attr_reader :hours, :minutes
end
