class Array

  def sum
    array=self
    result=0
    array.each { |num|
      result= result+num
    }
    return result
  end

  def square
    array=self
    result=[]
    array.each { |num|
    result.push(num *num)
    }

    return result
  end

  def square!
    self.replace(self.square)
  end
end
