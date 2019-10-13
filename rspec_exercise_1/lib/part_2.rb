def hipsterfy (word)
    vowels="aeiou"
    i=word.length-1
    while i>=0
        if vowels.include?(word[i])
          return word[0...i]+word[i+1..-1]
        end
        i-=1
    end
  return word
end

def vowel_counts (string)
    vowels="aeiou"
    hash=Hash.new(0)
    string.each_char do |alpha|
        if vowels.include?(alpha.downcase)
        hash[alpha.downcase]+=1
        end
    end
    return hash
end

def caesar_cipher (msg, num)
    alp=("a".."z").to_a
    new=msg.each_char.with_index do |alpha,i|
        if alp.include?(alpha)
            j=alp.index(alpha)
            msg[i]=alp[(j+num)%26]
        else
            msg[i]=alpha
        end
    end
    return new
end
