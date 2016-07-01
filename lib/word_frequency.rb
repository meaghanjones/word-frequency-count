class String
  def word_frequency (input_word)
      matched_words_array = []
    self.downcase().split().each do |word|
      if word.eql?(input_word.downcase())
        matched_words_array.push(input_word)
      end
    end
    matched_words_array.count()
  end
end
