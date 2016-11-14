require 'sinatra/base'

#controllers

require './controllers/application_controller.rb'
require './controllers/cats_controller.rb'


require './models/cats'


map('/') { run ApplicationController}
map('/cat') { run CatController}


before '/*' do
  puts "Route Log:"
  puts request.host
  puts params
  puts request.path
end

after '/*' do
  puts 'Completed Route Log:'
  puts response.body
  puts response.status
end