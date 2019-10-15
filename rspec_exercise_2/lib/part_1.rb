def partition (array, num)
  less=[]
  great=[]
    array.each do |ele|
            if ele<num
                less<<ele
            else
                great<<ele
            end
    end
    return [less,great]
end

def merge (hash1, hash2)
   hash=Hash.new(0)
   hash1.each {|k1,v1| hash[k1]=v1}
   hash2.each {|k2,v2| hash[k2]=v2}
   hash 

end

def censor (sentence, array)
    sen=sentence.split(" ")
    
    new=sen.map do |word|
        if array.include?(word.downcase)
            star_word(word)
        else
            word
        end
    end
    return new.join(" ") 
end
def star_word(word)
    vowel="aeiou"
    new_str=""
    word.each_char do |char|
    if vowel.include?(char.downcase)
        new_str+="*"
    else
        new_str+=char
    end
    end
    return new_str
end

def power_of_two? (num)
    product = 1
    while product<num
        product*=2
    end
    product==num
end