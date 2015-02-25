class Dictionary

  def initialize
    @entries={}
  end

  def entries
    @entries
  end

  def add(input)
    if input.class == String
      @entries[input]=nil
    else
      @entries.merge!(input)
    end

  end

  def keywords
    @entries.keys.sort
  end

  def include?(key)
    @entries.has_key?(key)
  end

  def find(input)
    keys=@entries.keys
    result={}
    keys.each {|key|
      if key.index(input) != nil
        result[key]=@entries[key]
      end
    }
    return result
  end

  def printable
    keys=keywords
    result=[]
    keys.each{|key|
      value=@entries[key]
      current="[#{key}] \"#{value}\""
      result.push(current)
    }
    result.join("\n")
  end


end
