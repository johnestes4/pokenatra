require 'active_record'
require 'ffaker'
require 'pg'
require_relative 'connection'
require_relative '../models/pokemon'
require_relative '../models/trainer'
require_relative './pokemon_data'
require_relative './trainer_data'

Pokemon.destroy_all
Trainer.destroy_all

pokemon_data = get_pokemon_data()
trainer_data = get_trainer_data()

pokemon_data.each_pair

pokemon_data.each_pair do |trainer_name, pokemons|
  info = trainer_data[trainer_name]
  current_trainer = Trainer.create!({
    name:       info[:name],
    level:      info[:level],
    img_url:    info[:img_url]
  })
  pokemons.each do |pokemon|
    Pokemon.create!({
      name:       pokemon[:name],
      poke_type:  pokemon[:poke_type],
      cp:         pokemon[:cp],
      img_url:    pokemon[:img_url],
      trainer:    current_trainer
    })
  end
end

# Pokemon.create(name: "Charmander", cp: rand(800), poke_type: "Fire", img_url: "https://img.pokemondb.net/artwork/charmander.jpg")
# Pokemon.create(name: "Squirtle", cp: rand(800), poke_type: "Water", img_url: "https://img.pokemondb.net/artwork/squirtle.jpg")
# Pokemon.create(name: "Pikachu", cp: rand(800), poke_type: "Lightning", img_url: "https://img.pokemondb.net/artwork/pikachu.jpg")
# Pokemon.create(name: "Bulbasaur", cp: rand(800), poke_type: "Grass/Poison", img_url: "https://img.pokemondb.net/artwork/bulbasaur.jpg")
# Pokemon.create(name: "Clefairy", cp: rand(800), poke_type: "Fairy", img_url: "https://img.pokemondb.net/artwork/clefairy.jpg")
# Pokemon.create(name: "Nidoking", cp: rand(800), poke_type: "Poison/Ground", img_url: "https://img.pokemondb.net/artwork/nidoking.jpg")
# Pokemon.create(name: "Gengar", cp: rand(800), poke_type: "Ghost/Poison", img_url: "https://img.pokemondb.net/artwork/gengar.jpg")
# Pokemon.create(name: "Blastoise", cp: rand(800), poke_type: "Water", img_url: "https://img.pokemondb.net/artwork/blastoise.jpg")
