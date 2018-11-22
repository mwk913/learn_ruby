def echo(word)
    word
end

def shout(word)
    word.upcase
end


def repeat(word, num = 2)
    ([word] * num).join(" ")
end

def start_of_word(word, number)
    word[0...number]
end

def first_word(word)
    word.split(" ").first
end

def titleize(sentence)
    word_array = sentence.split.map do |i|
      if ["the", "over", "and"].include?(i)
        i
      else
        i.capitalize
      end
    end
    word_array.first.capitalize!
    word_array.join(" ")
  end
  

