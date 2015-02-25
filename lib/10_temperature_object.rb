class Temperature

#   Celsius to Fahrenheit:   (°C × 9/5) + 32 = °F
# Fahrenheit to Celsius:   (°F − 32) x 5/9 = °C

#instance methods
  def initialize (opts={})
    @degree=opts
  end

  def in_celsius
    if @degree.has_key?(:c)
      @degree[:c]
    else
      f_to_c
    end
  end

  def in_fahrenheit
    if @degree.has_key?(:f)
      @degree[:f]
    else
      c_to_f
    end
  end

  def f_to_c
    (@degree[:f]-32) * (5.0/9)
  end

 def c_to_f
   @degree[:c]*(9.0/5) +32
 end

#class method self.
 def self.from_celsius(c)
   Temperature.new({:c =>c})
 end

 def self.from_fahrenheit(f)
   Temperature.new({:f =>f})
 end

end

class Celsius < Temperature

  def initialize(c)
    @degree={:c =>c}
  end
end

class Fahrenheit < Temperature

  def initialize(f)
    @degree={:f =>f}
  end
end
