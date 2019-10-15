def palindrome? (string)
   string.each_char.with_index do |char,i|
    if string[i]!=string[-i-1]
        return false
    end
    end
return true
end

def substrings (string)
    new=[]
    i=0
    while i<string.length
        (i...string.length).each do |j|
        new<<string[i..j]
    end
        i+=1
    end
    return new
end

def palindrome_substrings (string)
    substrings(string).select {|substring| palindrome?(substring) && substring.length>1}
    
end