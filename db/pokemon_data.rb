def get_pokemon_data
  pokemon_data = {
    "red"=>[
      {:name=>"Pikachu", :cp=>rand(800), :poke_type=>"Electric", :img_url=>"https://img.pokemondb.net/artwork/pikachu.jpg"},
      {:name=>"Snorlax", :cp=>rand(800), :poke_type=>"Normal", :img_url=>"https://img.pokemondb.net/artwork/snorlax.jpg"},
      {:name=>"Lapras", :cp=>rand(800), :poke_type=>"Water/Ice", :img_url=>"https://img.pokemondb.net/artwork/lapras.jpg"}
    ],
    "blue"=>[
      {:name=>"Pidgeot", :cp=>rand(800), :poke_type=>"Normal/Flying", :img_url=>"https://img.pokemondb.net/artwork/pidgeot.jpg"},
      {:name=>"Alakazam", :cp=>rand(800), :poke_type=>"Psychic", :img_url=>"https://img.pokemondb.net/artwork/alakazam.jpg"},
      {:name=>"Arcanine", :cp=>rand(800), :poke_type=>"Fire", :img_url=>"https://img.pokemondb.net/artwork/arcanine.jpg"}
    ],
    "brock"=>[
      {:name=>"Geodude", :cp=>rand(800), :poke_type=>"Rock/Ground", :img_url=>"https://img.pokemondb.net/artwork/geodude.jpg"},
      {:name=>"Onix", :cp=>rand(800), :poke_type=>"Rock/Ground", :img_url=>"https://img.pokemondb.net/artwork/onix.jpg"},
      {:name=>"Zubat", :cp=>rand(800), :poke_type=>"Poison/Flying", :img_url=>"https://img.pokemondb.net/artwork/zubat.jpg"}
    ],
    "misty"=>[
      {:name=>"Starmie", :cp=>rand(800), :poke_type=>"Water/Psychic", :img_url=>"https://img.pokemondb.net/artwork/starmie.jpg"},
      {:name=>"Psyduck", :cp=>rand(800), :poke_type=>"Water", :img_url=>"https://img.pokemondb.net/artwork/psyduck.jpg"},
      {:name=>"Togepi", :cp=>rand(800), :poke_type=>"Normal", :img_url=>"https://img.pokemondb.net/artwork/togepi.jpg"}
    ],
    "lance"=>[
      {:name=>"Dragonair", :cp=>rand(800), :poke_type=>"Dragon", :img_url=>"https://img.pokemondb.net/artwork/dragonair.jpg"},
      {:name=>"Gyarados", :cp=>rand(800), :poke_type=>"Water/Flying", :img_url=>"https://img.pokemondb.net/artwork/gyarados.jpg"},
      {:name=>"Dragonite", :cp=>rand(800), :poke_type=>"Dragon/Flying", :img_url=>"https://img.pokemondb.net/artwork/dragonite.jpg"}
    ],
    "professoroak"=>[
      {:name=>"Bulbasaur", :cp=>rand(800), :poke_type=>"Grass/Poison", :img_url=>"https://img.pokemondb.net/artwork/bulbasaur.jpg"},
      {:name=>"Charmander", :cp=>rand(800), :poke_type=>"Fire", :img_url=>"https://img.pokemondb.net/artwork/charmander.jpg"},
      {:name=>"Squirtle", :cp=>rand(800), :poke_type=>"Water", :img_url=>"https://img.pokemondb.net/artwork/squirtle.jpg"}
    ]
  }

  return pokemon_data
end
