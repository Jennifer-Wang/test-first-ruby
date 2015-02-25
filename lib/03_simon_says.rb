def echo(word)
  return "#{word}"
end

def shout(word)
  return word.upcase
end

def repeat(word,num=2)
  return  ((word+" ") *num).chop
end

def start_of_word(word, num)
  return word[0..num-1]

end



def first_word(sentence)
  array= sentence.split(" ")
  return array[0]
end

def titleize(sentence)
  array= sentence.split(" ")
  result=[]
  non_cap=["and","or","the","over"]
  for i in 0..array.length-1
    current_word=array[i]
    if !non_cap.include?(current_word) || i==0
      current_word.capitalize!
    end

    result.push(current_word)
  end
  return result.join(" ")
end
