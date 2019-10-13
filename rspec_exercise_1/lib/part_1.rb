def average (num1, num2)
    return (num1+num2)/2.0
end

def average_array (array)
    array.sum/(array.length*1.0)
end

def repeat (string, num)
    new=""
    # new=string*num
    num.times {new+=string}
    new
end

def yell (string)
    return string.upcase+"!"
end

def alternating_case (sentence)
    words=sentence.split(" ")
    new=words.map.with_index do |word, i|
        if i%2==0
            word.upcase
        else
            word.downcase
        end
    end
    return new.join(" ")
end
