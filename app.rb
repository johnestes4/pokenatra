require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'
require 'pry'

# Load the file to connect to the DB
require_relative 'db/connection'

# Load models
require_relative 'models/trainer'
require_relative 'models/pokemon'
require_relative 'models/team'

get '/' do
  redirect '/trainers'
end

get '/pokemons' do
  @pokemons = Pokemon.all.sort_by do |pokemon|
    pokemon[:id]
  end
  erb :"pokemons/index"
end

get '/pokemons/new' do
  erb :"pokemons/new"
end

get '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemons/show"
end

get '/pokemons/:id/edit' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemons/edit"
end

put '/pokemons/:id' do
  pokemon = Pokemon.find(params[:id])
  pokemon.update(params[:pokemon])
  redirect "/pokemons/#{pokemon.id}"
end

delete '/pokemons/:id' do
  pokemon = Pokemon.find(params[:id])
  pokemon.destroy
  redirect '/pokemons'
end

post '/pokemons' do
  pokemons = Pokemon.create(params[:pokemon])
  redirect "/pokemons/#{pokemon.id}"
end

get '/trainers' do
  @trainers = Trainer.all.sort_by do |trainer|
    trainer[:id]
  end
  erb :"trainers/index"
end

get '/trainers/new' do
  erb :"trainers/new"
end

get '/trainers/:id' do
  @trainer = Trainer.find(params[:id])
  @pokemons = @trainer.pokemons.all.sort_by do |pokemon|
    pokemon[:id]
  end
  @team = Team.find(@trainer.team_id)
  erb :"trainers/show"
end
put '/trainers/:id' do
  trainer = Trainer.find(params[:id])
  trainer.update(params[:trainer])
  redirect "/trainers/#{trainer.id}"
end
delete '/trainers/:id' do
  trainer = Trainer.find(params[:id])
  trainer.destroy
  redirect "/trainers/#{trainer.id}"
end
post '/trainers' do
  trainer = Trainer.create(params[:trainer])
  redirect "/trainers/#{trainer.id}"
end

get '/trainers/:id/edit' do
  @trainer = Trainer.find(params[:id])
  @pokemons = @trainer.pokemons
  @team = Team.find(@trainer.team_id)
  erb :"trainers/edit"
end
