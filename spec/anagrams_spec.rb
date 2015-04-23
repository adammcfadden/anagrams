require 'rspec'
require 'anagrams'

describe('String#anagrams') do
  it('return a word that is an anagram to the given word') do
    expect('dog'.anagrams()).to(eq('god'))
  end
end
