require('rspec')
require('pry')
require('anaanti_logic')

describe('#Anagram') do
  it("returns true if 'cat' matches 'tac'") do
    word1 = Anagram.new()
    expect(words.compared_words("tac", "cat")).to(eq("These are anagrams!"))
  end
  it("returns true even if letters are capitalized 'CAt' matches 'Tac'") do
    word1 = Anagram.new()
    expect(words.compared_words("CAt", "Tac")).to(eq("These are anagrams!"))
  end
  it("returns false when the letters do not match") do
    word1 = Anagram.new()
    expect(words.compared_words("Jess", "George")).to(eq("These are antigrams!"))
  end
  it("returns false when the letters do not match") do
    word1 = Anagram.new()
    expect(words.compared_words("Cat's", "Tac.s")).to(eq("These are anagrams!"))
  end
  it("returns false telling a user that it is not a word") do
    word1 = Anagram.new()
    expect(words.compared_words("wpg", "mdl")).to(eq("Invalid word!"))
  end
end
