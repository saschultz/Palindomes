require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/palindromes')
require('pry')

get('/') do
  erb(:index)
end

get('/index') do
  if params.fetch('user_string').palindromes()
    @answer = "Yes this is a Palindrome!!"
  else
    @answer = "No this is not a Palindrome."
  end
  erb(:index)
end
