require('pry')

  class Anagram
    attr_accessor(:wordOne, :wordTwo)

    def initialize(wordOne, wordTwo)
      @wordOne = wordOne.downcase.gsub(/[.!'?,]/, '')
      @wordTwo = wordTwo.downcase.gsub(/[.!'?,]/, '')
    end

    def anagram()
      if wordOne.scan(/[aeiouy]/).count == 0 || wordTwo.scan(/[aeiouy]/).count == 0
        "Invalid word"
      elsif wordOne.chars.sort() == wordTwo.chars.sort()
        "These are anagrams"
      else
        "These are neither antigrams or anagrams"
      end
    end

    def antigram()
      if wordOne.count(wordTwo) == 0 
        "These are antigrams"
    end
  end
end
