def unique(string)
    a = string.split("")
    hash = Hash.new

    a.map do |letter|
        if hash[letter] == 1
            return false
        else
            hash[letter] = 1
        end
    end
    return true
end
