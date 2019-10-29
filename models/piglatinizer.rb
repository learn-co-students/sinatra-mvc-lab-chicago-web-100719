class PigLatinizer

def piglatinize(string)
words = string.split(" ")
plwords = words.map {|word| piglatinize_word(word)}
plwords.join(" ")
end

def piglatinize_word(word)
    first_letter = word[0].downcase
    vowels = ["a", "e", "i", "o", "u"]
    if vowels.include?(first_letter)
        "#{word}way"
    else
    array = []
    array << word[0]
        if vowels.include?(word[1]) == false
        array << word[1]
            if vowels.include?(word[2]) == false
            array << word[2]
            end
        end
        "#{word[array.length..-1] + array.join + "ay"}"
    end
end
end