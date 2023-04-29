CREATE TABLE trainer (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(80),
    last_name VARCHAR(80)
);

CREATE TABLE favorite_pokemon_type (
    id SERIAL PRIMARY KEY,
    type_name VARCHAR(80),
    trainer_id INTEGER REFERENCES trainer(id)
);

CREATE TABLE pokemon (
    id SERIAL PRIMARY KEY,
    name VARCHAR(80),
    type VARCHAR(80)
);

CREATE TABLE team (
    id SERIAL PRIMARY KEY,
    trainer_id INTEGER REFERENCES trainer(id)
);

CREATE TABLE team_pokemon (
    id SERIAL PRIMARY KEY,
    team_id INTEGER REFERENCES team(id),
    pokemon_id INTEGER REFERENCES pokemon(id)
);


INSERT INTO trainer (first_name, last_name) VALUES ('John', 'Doe');
INSERT INTO favorite_pokemon_type (type_name, trainer_id) VALUES ('Electric', 1);
INSERT INTO favorite_pokemon_type (type_name, trainer_id) VALUES ('Water', 1);
INSERT INTO team (trainer_id) VALUES (1);
INSERT INTO team_pokemon (team_id, pokemon_id) VALUES (1, 1); -- Pikachu
INSERT INTO team_pokemon (team_id, pokemon_id) VALUES (1, 2); -- Charmander

INSERT INTO trainer (first_name, last_name) VALUES ('Jane', 'Doe');
INSERT INTO favorite_pokemon_type (type_name, trainer_id) VALUES ('Fire', 2);
INSERT INTO favorite_pokemon_type (type_name, trainer_id) VALUES ('Dragon', 2);
INSERT INTO team (trainer_id) VALUES (2);
INSERT INTO team_pokemon (team_id, pokemon_id) VALUES (2, 3); -- Squirtle
INSERT INTO team_pokemon (team_id, pokemon_id) VALUES (2, 4); -- Bulbasaur

INSERT INTO trainer (first_name, last_name) VALUES ('Bob', 'Smith');
INSERT INTO favorite_pokemon_type (type_name, trainer_id) VALUES ('Psychic', 3);
INSERT INTO favorite_pokemon_type (type_name, trainer_id) VALUES ('Ghost', 3);
INSERT INTO team (trainer_id) VALUES (3);
INSERT INTO team_pokemon (team_id, pokemon_id) VALUES (3, 5); -- Jigglypuff
INSERT INTO team_pokemon (team_id, pokemon_id) VALUES (3, 6); -- Pikachu

INSERT INTO trainer (first_name, last_name) VALUES ('Sarah', 'Lee');
INSERT INTO favorite_pokemon_type (type_name, trainer_id) VALUES ('Grass', 4);
INSERT INTO favorite_pokemon_type (type_name, trainer_id) VALUES ('Fairy', 4);
INSERT INTO team (trainer_id) VALUES (4);
INSERT INTO team_pokemon (team_id, pokemon_id) VALUES (4, 7); -- Eevee
INSERT INTO team_pokemon (team_id, pokemon_id) VALUES (4, 8); -- Vaporeon


