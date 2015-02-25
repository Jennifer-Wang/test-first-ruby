def add(a,b)
  return a+b
end

def subtract(a,b)
  return a-b

end

def sum(array)
  sum=0
  array.each {|item| sum= sum+item}
  return sum
end

def multiply(array)
  result=1
  array.each {|item| result= result *item}
  return result
end

def power(a,b)
  a**b
end

def factorial(num)
  result=1
  for i in 1 .. num
    result *= i
  end
  return result
end
