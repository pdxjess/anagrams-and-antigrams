require('rspec')
require('pry')
require('anaanti_logic')

describe('#Anagram') do
  it("returns true if 'cat' matches 'tac'") do
    words = Anagram.new()
    expect(words.compared_words("ruby", "cat")).to(eq("These are anagrams!"))
  end
end
