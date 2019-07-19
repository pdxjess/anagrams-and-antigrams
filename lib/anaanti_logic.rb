require('pry')

  class Anagram
    def initialize(word)
      @word = word
    end

    def compared_words(word1, word2)
      @word = word1.downcase
      word1 = word1.gsub(/[.!'?,]/, '')
      word2 = word2.gsub(/[.!'?,]/, '')
      if word1.chars.sort() == word2.chars.sort()
        "These are anagrams!"
      elsif word1.scan(/[aeiouy]/).count == 0
        "Invalid word"
      elisf word2.scan(/[aeiouy]/).count == 0
        "Invalid word"
      else word1.chars.sort() != word2.chars.sort()
        "These are antigrams!"
    end
  end
