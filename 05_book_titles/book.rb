class Book
 attr_accessor :title

  def title=(new_title)
   title_words = new_title.split(" ")
   title_words = [title_words[0].capitalize] +
      title_words[1..-1].map! do |w|
        lower_case = %w{a an in the and the of}
        if lower_case.include? w
          w.downcase
        else
          w.capitalize
        end
      end
    @title = title_words.join(" ")
  end
end