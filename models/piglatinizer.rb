require 'pry'
class PigLatinizer

    def piglatinize(string)
        word_array = string.split(" ")
        result = word_array.collect { |w| piglatinize_word(w) }
        result.join(" ")
    end

    def piglatinize_word(word)
        first_letter = word[0].downcase
        letter_array = word.split("")
        con_array = []
        vowels_array = ["a", "e", "i", "o", "u"]
        if vowels_array.include?(first_letter)
            # do for vowel first letter
            "#{word}way"
        else
            # do for consonant first letter
            until vowels_array.include?(letter_array[0])
                con_array << letter_array.shift
            end
            first_half = letter_array.join("")
            second_half = con_array.join("")
            "#{first_half}#{second_half}ay"
        end

    end
end

