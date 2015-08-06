require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combo')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/cents') do
  @cents = params.fetch('cents').coin_combo()
  erb(:cents)
end
