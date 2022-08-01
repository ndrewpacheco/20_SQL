-- from the terminal run:
-- psql < league.sql
DROP DATABASE IF EXISTS league;
CREATE DATABASE league;
\c league

CREATE TABLE teams (id SERIAL PRIMARY KEY, name TEXT NOT NULL);
CREATE TABLE referees (id SERIAL PRIMARY KEY, name TEXT NOT NULL);
CREATE TABLE seasons (id SERIAL PRIMARY KEY, start_date DATE NOT NULL, end_date DATE NOT NULL);
CREATE TABLE players (id SERIAL PRIMARY KEY, name TEXT NOT NULL, team_id INTEGER REFERENCES teams ON DELETE CASCADE);

CREATE TABLE games (
  id SERIAL PRIMARY KEY,

  team1_id INTEGER REFERENCES teams ON DELETE CASCADE,
  team2_id INTEGER REFERENCES teams ON DELETE CASCADE,
  referee_id INTEGER REFERENCES referees ON DELETE CASCADE,
  season_id INTEGER REFERENCES seasons ON DELETE CASCADE
);

CREATE TABLE goals (
  id SERIAL PRIMARY KEY,
  game_id INTEGER REFERENCES games ON DELETE CASCADE,
  player_id INTEGER REFERENCES players ON DELETE CASCADE)
