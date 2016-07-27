DROP TABLE IF EXISTS teams;
DROP TABLE IF EXISTS trainers;
DROP TABLE IF EXISTS pokemons;

CREATE TABLE teams (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  color TEXT NOT NULL
);

CREATE TABLE trainers (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  level INT NOT NULL,
  team_id INT NOT NULL,
  img_url TEXT NOT NULL
);

CREATE TABLE pokemons (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  cp INT NOT NULL,
  poke_type TEXT NOT NULL,
  img_url TEXT NOT NULL,
  trainer_id INT
)
