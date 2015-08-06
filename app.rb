require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combo')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/cents') do
  # cents_string = params.fetch('cents')
  # cents_fixnum = cents_string.to_i()
  # @cents = cents_fixnum.coin_combo()

  @cents = params.fetch('cents').to_i().coin_combo()
  erb(:cents)
end
