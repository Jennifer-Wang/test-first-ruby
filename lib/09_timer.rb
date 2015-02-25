class Timer
  def initialize
    @seconds=0
  end

  def seconds=(seconds)
    @seconds=seconds
  end

  def seconds
    @seconds
  end

  def time_string
    seconds=@seconds
    s= seconds%60
    m= seconds/60 %60
    h= seconds/3600 %60

    if s<10
      s= "0"+s.to_s
    end

    if m<10
      m= "0"+m.to_s
    end

    if h<10
      h= "0"+h.to_s
    end
    return "#{h}" + ":" + "#{m}" + ":" + "#{s}"
  end
end
