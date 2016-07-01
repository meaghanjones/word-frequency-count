require('sinatra')
require('sinatra/reloader')
require('./lib/word_frequency')
also_reload('lib/**/*.rb')

get('/')do
  erb(:index)
end

get ('/result')do
  @input_phrase = params.fetch('input-phrase')
  @input_word = params.fetch('input-word')
  @word_frequency_count = @input_phrase.word_frequency(@input_word)
  erb(:result)
end
