class RPNCalculator

  def initialize
    @numbers=[]
  end

  def push(num)
    @numbers.push(num)
  end

  def plus
    if @numbers.length<2
      raise "calculator is empty"
    else
    temp=@numbers.pop
    @numbers[-1]= @numbers[-1] +temp
  end
  end

  def value
    @numbers[-1]
  end

  def minus
    if @numbers.length<2
      raise "calculator is empty"
    else
      temp=@numbers.pop
      @numbers[-1]= @numbers[-1] -temp
    end
  end

  def times
    if @numbers.length<2
      raise "calculator is empty"
    else
      temp=@numbers.pop
      @numbers[-1]= @numbers[-1] *temp
    end
  end

  def divide
    if @numbers.length<2
      raise "calculator is empty"
    else
      temp=@numbers.pop
      @numbers[-1]= @numbers[-1]*1.0 /temp
    end
  end

  def tokens(string)
    array=string.split(" ")
    result=[]

    array.each { |item|
      if item == "+"
        result.push(:+)
      elsif item == "-"
        result.push(:-)
      elsif item =="*"
        result.push(:*)
      elsif item =="/"
        result.push(:/)
      else
        result.push(item.to_i)
      end

    }
      return result
  end

  def evaluate(string)
    tokens=tokens(string)
    calculator=RPNCalculator.new

    tokens.each { |token|
    if token.class == Fixnum
      calculator.push(token)
    elsif token== :+
      calculator.plus
    elsif token == :-
      calculator.minus
    elsif token == :*
      calculator.times
    elsif token == :/
      calculator.divide
    end

    }
    return calculator.value

  end


end
