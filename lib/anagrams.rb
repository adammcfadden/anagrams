class String
  define_method(:anagrams) do |arg|
  starting_word = (self.downcase().split(//)).sort!()
  compared_word = (arg.downcase().split(//)).sort!()

  if starting_word == compared_word
    return true
  else
    return false
  end

  end
end
