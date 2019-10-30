
class PigLatinizer
    def piglatinize(input)
        if input.split(" ").length == 1
            input = self.piglatinize_word(input)
        else
            input = self.piglatinize_sentence(input)
        end
    end

    def consonant?(char)
        !char.match(/[aAeEiIoOuU]/)
    end

    def piglatinize_word(word)
    
        letter_array = word.split("")
        vowels = ["a", "e", "i", "o", "u",]
        if vowels.include?(letter_array[0].downcase)
            letter_array = letter_array << "w"
        else
            letter_array.each do |letter|
                if !vowels.include?(letter.downcase)
                letter_array = letter_array[1..-1] << letter
                else
                    break
                end
            end
        end
    letter_array.join("") + "ay"
end

    def piglatinize_sentence(sentence)
        array = sentence.split(" ")
        array.map{|word| self.piglatinize_word(word)}.join(" ")
    end

    


end