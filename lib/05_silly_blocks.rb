def reverser
  array=yield.split(" ")
  result=[]
  array.each  { |word|
    word=word.reverse
    result.push(word)
    }
    return result.join(" ")
end

def adder(num=1)
  yield+num
end

def repeater(num=1)
  num.times {yield}
end
