# require './duck.rb'
# require './pond.rb'
# require './frog.rb'
# require './frog_pond.rb'
# require './duck_pond.rb'
require 'pry-byebug'
Dir[Dir.pwd + "/**/*.rb"].each { |f| require f }

pond = Pond.new(3, Duck, 2, WaterLily)
pond.simulate_one_day
