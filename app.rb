require('sinatra')
require('sinatra/reloader')

get('/') do
  erb(:index)
end

get('/cents') do
  @cents = params.fetch('cents').coin_combo()
  erb(:cents)
end
