require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/restaurants" do
  @restaurants = Restaurant.all
  erb :index
end


get '/restaurants/:id' do
	# THE ID WILL BE PASSED VIA THE PARAMS HASH
	@restaurant = Restaurant.find(params[:id])
	erb :show
end


post '/restaurants' do
# needs a name and address
	# THE name and address WILL BE PASSED VIA THE PARAMS HASH
	@restaurant = Restaurant.new(name: params[:name], address: params[:address])
	@restaurant.save
	redirect '/restaurants'
end



























