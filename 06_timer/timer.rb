class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds / 3600
    remainder = @seconds % 3600
    min = remainder / 60
    sec = remainder % 60

    sprintf("%02d:%02d:%02d", hours, min, sec)
  end

end