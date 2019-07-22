require('rspec')
require('pry')
require('anaanti_logic')

describe('#Anagram') do
  it("returns true if 'cat' matches 'tac'") do
    wordOne = Anagram.new("tac")
    expect(wordOne.compared_words("tac", "cat")).to(eq("These are anagrams"))
  end
  it("returns true even if letters are capitalized 'CAt' matches 'Tac'") do
    wordOne = Anagram.new("tac")
    expect(wordOne.compared_words("tac","caT")).to(eq("These are anagrams"))
  end
  it("returns false when the letters do not match") do
    wordOne = Anagram.new("tac")
    expect(wordOne.compared_words("tac", "loop")).to(eq("These are antigrams"))
  end
  it("returns true even when their are apostrophes or periods") do
    wordOne = Anagram.new("tac")
  expect(wordOne.compared_words("tac", "Tac.")).to(eq("These are anagrams"))
  end
  it("returns false telling a user that it is not a word") do
    wordOne = Anagram.new("tac")
    expect(wordOne.compared_words("mdl", "lhk")).to(eq("Invalid word"))
  end
end
