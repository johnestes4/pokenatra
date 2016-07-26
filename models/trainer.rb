class Trainer < ActiveRecord::Base
  has_many :pokemons
  belongs_to :team
end
