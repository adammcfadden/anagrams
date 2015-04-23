require 'rspec'
require 'anagrams'

describe('String#anagrams') do
  it('return true if a word is an anagram to the given word') do
    expect('dog'.anagrams('god')).to(eq(true))
  end
  it('return false if a word is an anagram to the given word') do
    expect('pool'.anagrams('elephant')).to(eq(false))
  end
end
