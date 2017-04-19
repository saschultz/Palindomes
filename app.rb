require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/palindromes')
require('pry')

get('/') do
  erb(:index)
end

get('/answer') do
  @answer = params.fetch('user_string').palindromes()

  erb(:answer)
end
