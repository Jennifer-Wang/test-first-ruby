def translate(sentence)
  words= sentence.split(" ")
  result=[]
  words.each {|word|
    result.push(translate_one_word(word))
  }
  return result.join(" ")
end

def translate_one_word(word)
  if word.start_with?("a","e","i", "u", "o")
    return word+"ay"
  elsif word[0..1]=="qu"
    return word[2..-1]+"quay"
  else
    word=word[1..-1]+word[0]
    return translate_one_word(word)
  end
end
