def translate(str)
        str.downcase!
        words = str.split(" ")
        vowels = ["a", "e", "i", "o", "u", "y"]
        consts = [*("a".."z")] - vowels
              
        result = words.map! do |word|
            if vowels.any?{|vowel| word[0].include?(vowel)}
                result = word + "ay"
            elsif word[0..2] == "sch"
                result = word.delete(word[0..2]) + "schay"
            elsif consts.any?{|const| word[0] && word[1]== const}
                if consts.any?{|const| word[2].include?(const)}
                result = word.delete(word[0..2]) + word[0..2] + "ay" 
                elsif word[1..2] == "qu"
                result = word.delete(word[0..2]) + word[0..2] + "ay"
                else     
                result = word.delete(word[0..1]) + word[0..1] + "ay" 
                end
            elsif word[0..1] == "qu"
                result = word.delete(word[0..1]) + "quay" 
            elsif consts.any?{|const| word[0].include?(const)}
                result = word.delete(word[0])+ word[0] + "ay" 
            end
        end
        new_sentence = result.join(" ")
        return new_sentence
    end
    
    