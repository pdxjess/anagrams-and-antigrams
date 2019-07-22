require('rspec')
require('pry')
require('anaanti_logic')

describe('#Anagram') do
  it("returns true if 'cat' matches 'tac'") do
    word1 = Anagram.new('tac')
    expect(word1.compared_words?('cat')).to(eq(true))
  end
  it("returns true even if letters are capitalized 'CAt' matches 'Tac'") do
    expect(word1.compared_words?("Tac")).to(eq("These are anagrams!"))
  end
  it("returns false when the letters do not match") do
    expect(word1.compared_words?("loop")).to(eq("These are antigrams!"))
  end
  it("returns true even when their are apostrophes or periods") do
  expect(word1.compared_words?("Tac.s")).to(eq("These are anagrams!"))
  end
  it("returns false telling a user that it is not a word") do
    expect(word1.compared_words?("mdl")).to(eq("Invalid word!"))
  end
end
