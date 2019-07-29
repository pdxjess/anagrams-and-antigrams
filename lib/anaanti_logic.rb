require('pry')

  class Anagram
    attr_accessor(:wordOne, :wordTwo)

    def initialize(wordOne, wordTwo)
      @wordOne = wordOne.downcase.gsub(/[.!'?,]/, '')
      @wordTwo = wordTwo.downcase.gsub(/[.!'?,]/, '')
    end

    def anagram()
      if wordOne.scan(/[aeiouy]/).count == 0
      "Invalid word"
      elsif wordTwo.scan(/[aeiouy]/).count == 0
        "Invalid word"
      elsif wordOne.chars.sort() == wordTwo.chars.sort()
        "These are anagrams"
      else
        "Enter a word:"
      end
    end

    def antigram()
      if wordOne.chars.sort() != wordTwo.chars.sort()
        "These are antigrams"
      elsif wordOne.scan(/[aeiouy]/).count == 1
        "These are neither antigrams nor anagrams"
      elsif wordTwo.scan(/[aeiouy]/).count == 1
        "These are neither antigrams nor anagrams"
      else
    end
  end
end
