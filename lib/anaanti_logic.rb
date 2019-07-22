require('pry')

  class Anagram
    def initialize(word)
      @word = word
    end

    def compared_words(wordOne, wordTwo)
      @word = wordOne
      wordOne = wordOne.gsub(/[.!'?,]/, '')
      wordTwo = wordTwo.gsub(/[.!'?,]/, '')
      if wordOne.chars.sort() == wordTwo.chars.sort()
        "These are anagrams"
      elsif wordOne.downcase().chars.sort() == wordTwo.downcase().chars.sort()
        "These are anagrams"
      elsif wordOne.scan(/[aeiouy]/).count == 0
        "Invalid word"
      elsif wordTwo.scan(/[aeiouy]/).count == 0
        "Invalid word"
      elsif wordOne.chars.sort() != wordTwo.chars.sort()
        "These are antigrams"
      else
        "Enter two words:"
    end
  end
end
