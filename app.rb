require('sinatra')
require('sinatra/reloader')
require('./lib/buy_car')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/buy') do
  @make = params.fetch('make')
  @model= params.fetch('model')
  @year= params.fetch('year').to_i()
  test_vehicle = Vehicle.new(@make, @model, @year)
  @result = test_vehicle.worth_buying?().to_s()
  erb(:buy)
end
