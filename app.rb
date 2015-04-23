require('sinatra')
require('sinatra/reloader')
require('./lib/anagrams')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/output') do

  @original_word = params.fetch('starting_word')

  if params.fetch('starting_word').anagrams(params.fetch('compared_word1'))
    @compared_word1 = params.fetch('compared_word1') + '  '
  else
    @compared_word1 = ''
  end
  if params.fetch('starting_word').anagrams(params.fetch('compared_word2'))
    @compared_word2 = params.fetch('compared_word2') + '  '
  else
    @compared_word2 = ''
  end
  if params.fetch('starting_word').anagrams(params.fetch('compared_word3'))
    @compared_word3 = params.fetch('compared_word3') + '  '
  else
    @compared_word3 = ''
  end
  if params.fetch('starting_word').anagrams(params.fetch('compared_word4'))
    @compared_word4 = params.fetch('compared_word4') + '  '
  else
    @compared_word4 = ''
  end
  if params.fetch('starting_word').anagrams(params.fetch('compared_word5'))
    @compared_word5 = params.fetch('compared_word5')
  else
    @compared_word5 = ''
  end

  @anagrams_success = @compared_word1 + @compared_word2 + @compared_word3 + @compared_word4 + @compared_word5

  erb(:output)
end
