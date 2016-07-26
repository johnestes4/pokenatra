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

get '/trainers/:id' do
  @trainer = Trainer.find(params[:id])
  @pokemons = @trainer.pokemons
  erb :"trainers/show"
end
