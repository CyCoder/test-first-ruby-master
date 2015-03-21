class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def padded(num)
    num < 10 ? "0#{num}" : "#{num}"
  end
  
  def time_string
    hrs = @seconds / 3600
    mins = (@seconds % 3600 )/ 60
    secs = @seconds % 60
    if @seconds < 60
      if @seconds < 10
        secs = padded(secs)
      end
      mins = padded(mins)
      hrs = padded(hrs)
    else
      secs = padded(secs)
      if hrs < 10
        hrs = padded(hrs)
      end
      if mins < 10
        mins = padded(mins)
      end
    end
    "#{hrs}:#{mins}:#{secs}"
  end
end
