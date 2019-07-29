require('rspec')
require('pry')
require('anaanti_logic')

describe('#Anagram') do
  it("returns true if 'cat' matches 'tac'") do
    word = Anagram.new("tac", "cat")
    expect(word.anagram()).to(eq("These are anagrams"))
  end
  it("returns true even if letters are capitalized 'CAt' matches 'Tac'") do
    word = Anagram.new("Tac", "cAt")
    expect(word.anagram()).to(eq("These are anagrams"))
  end
  it("returns true even when their are apostrophes or periods") do
    word = Anagram.new("tac.","cat")
    expect(word.anagram()).to(eq("These are anagrams"))
  end
  it("returns false when the letters do not match") do
    word = Anagram.new("tac", "loop")
    expect(word.antigram()).to(eq("These are antigrams"))
  end
  it("returns false telling a user that it is not a word") do
    word = Anagram.new("mdl", "lhk")
    expect(word.anagram()).to(eq("Invalid word"))
  end
  it("returns false telling a user that it is not an antigram or anagram") do
    word = Anagram.new("bunny", "puppy")
    expect(word.antigram()).to(eq("These are neither antigrams or anagrams"))
  end
end
