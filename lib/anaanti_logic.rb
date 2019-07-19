require('pry')

  class Anagram
    def initialize(word)
      @word1 = word1
    end

    def compared_words(word1, word2)
      @word1 = word1.downcase
      word2 = word2.downcase
      word1 = word1.gsub(/[.!'?,]/, '')
      word2 = word2.gsub(/[.!'?,]/, '')
      if word1.chars.sort() == word2.chars.sort()
        "These are anagrams!"
      elsif word1.scan(/[aeiouy]/).count == 0
        "Invalid word"
      elsif word2.scan(/[aeiouy]/).count == 0
        "Invalid word"
      elsif word1.chars.sort() != word2.chars.sort()
        "These are antigrams!"
      else
        "Enter two words:"
    end
  end
