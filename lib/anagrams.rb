class String
  define_method('anagrams') do |arg|
  starting_word = (self.split(//)).sort!()
  compared_word = (arg.split(//)).sort!()

  if starting_word == compared_word
    return true
  else
    return false
  end

  end
end
