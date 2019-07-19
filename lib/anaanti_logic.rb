require('pry')

  class Anagram
    def initialize(word)
      @word = word
    end
    def compared_words(word1, word2)
      @word = word1
      if word1.chars.sort() == word2.chars.sort()
        "These are anagrams!"
      else word1.chars.sort() != word2.chars.sort()
        "These are antigrams!"
    end
  end
