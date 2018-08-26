def letters(s)
    hash = Hash.new
    s.each_char do |char|
        if hash[char].nil? == true
            hash[char] = 1
        else
            hash[char] += 1
        end
    end
    return hash
end

def permutation(s1, s2)

    return letters(s1) == letters(s2)
end
