class Book
  #getter
  def title
    @title
  end

  def title=(title)
    array= title.split(" ")
    result=[]
    non_cap=["the","a","an","and","in","of"]
    for i in 0...array.length
      if !non_cap.include?(array[i]) || i==0
        temp=array[i].capitalize
        result.push(temp)
      else
        result.push(array[i])
      end
    end
    @title=result.join(" ")

  end




end
