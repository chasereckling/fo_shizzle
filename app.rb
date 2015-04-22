require('sinatra')
require('sinatra/reloader')
require('./lib/fo_shizzle')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/fo_shizzle') do
  @sentence = params.fetch('sentence').shiz()
  erb(:fo_shizzle)
end
