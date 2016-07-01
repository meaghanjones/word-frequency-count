class String
  def word_frequency (input_word)
      matched_words_array = []
    self.split().each do |word|
      if word.eql?(input_word)
        matched_words_array.push(input_word)
      end
    end
    matched_words_array
  end
end
