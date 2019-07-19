require('rspec')
require('pry')
require('anaanti_logic')

describe('#Anagram') do
  it("returns true if 'cat' matches 'tac'") do
    words = Anagram.new()
    expect(words.compared_words("tac", "cat")).to(eq("These are anagrams!"))
  end
  it("returns true even if letters are capitalized 'cat' matches 'tac'") do
    words = Anagram.new()
    expect(words.compared_words("CAt", "Tac")).to(eq("These are anagrams!"))
  end
end
