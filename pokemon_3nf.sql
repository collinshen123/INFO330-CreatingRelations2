-- Creating pokeon_ability_linking table
CREATE TABLE If not EXISTS pokemon_ability_linking(
ability_id INTEGER,
pokedex_number INTEGER,
FOREIGN KEY (pokedex_number) REFERENCES second_NF_pokemon(pokedex_number),
FOREIGN KEY (ability_id) REFERENCES abilities_table(ability_id)
);

-- Inserting info into linking table(ability_id)
INSERT INTO pokemon_ability_linking (ability_id)
SELECT 
abilities_table.ability_id
FROM abilities_table;

-- Inserting info into linking table(pokemon_number)
INSERT INTO pokemon_ability_linking (pokedex_number)
SELECT 
second_NF_pokemon.pokedex_number
FROM second_NF_pokemon;




-- creates a pokemon_weakness_table is a directory of all unique pokemon weaknesses
CREATE TABLE IF NOT EXISTS pokemon_weakness_table (
type_id INTEGER primary key,
against_bug NUMERIC,
against_dark NUMERIC,
against_dragon NUMERIC,
against_electric NUMERIC,
against_fairy NUMERIC,
against_fight NUMERIC,
against_fire NUMERIC,
against_flying NUMERIC,
against_ghost NUMERIC,
against_grass NUMERIC,
against_ground NUMERIC,
against_ice NUMERIC,
against_normal NUMERIC,
against_poison NUMERIC,
against_psychic NUMERIC,
against_rock NUMERIC,
against_steel NUMERIC,
against_water NUMERIC
);
--inserts distinct types into the type_table
INSERT INTO pokemon_weakness_table (against_bug, against_dark, against_dragon, against_electric, against_fairy, against_fight, against_fire, against_flying, against_ghost, against_grass, against_ground, against_ice, against_normal, against_poison, against_psychic, against_rock, against_steel, against_water)
SELECT DISTINCT
first_NF_pokemon.against_bug,
first_NF_pokemon.against_dark,
first_NF_pokemon.against_dragon,
first_NF_pokemon.against_electric,
first_NF_pokemon.against_fairy,
first_NF_pokemon.against_fight,
first_NF_pokemon.against_fire,
first_NF_pokemon.against_flying,
first_NF_pokemon.against_ghost,
first_NF_pokemon.against_grass,
first_NF_pokemon.against_ground,
first_NF_pokemon.against_ice,
first_NF_pokemon.against_normal,
first_NF_pokemon.against_poison,
first_NF_pokemon.against_psychic,
first_NF_pokemon.against_rock,
first_NF_pokemon.against_steel,
first_NF_pokemon.against_water
FROM first_NF_pokemon;


-- creates new table called second_NF_Pokemon that contains most of the unaltered data.
CREATE TABLE IF NOT EXISTS p_table (
pokedex_number Integer PRIMARY KEY,
type_id Integer,
name Varchar,
classfication Varchar,
experience_growth INTEGER,
height_m NUMERIC,
weight_kg NUMERIC,
base_egg_steps INTEGER,
base_happiness INTEGER,
base_total INTEGER,
capture_rate INTEGER,
is_legendary INTEGER,
percentage_male NUMERIC,
hp INTEGER,
generation INTEGER,
speed INTEGER,
sp_attack INTEGER,
attack INTEGER,
sp_defense INTEGER,
defense INTEGER,
split_ability Varchar,
FOREIGN Key (type_id) REFERENCES type_table(type_id)
);

-- Inserterts the columns that are not going to be altered from the first_NF_pokemon.
INSERT INTO p_table (type_id, name, classfication, experience_growth, height_m, weight_kg, base_egg_steps, base_happiness, base_total, capture_rate, is_legendary, percentage_male, hp, generation, speed, sp_attack, attack, sp_defense, defense, split_ability)
SELECT
type_table.type_id,
first_NF_pokemon.name,
first_NF_pokemon.classfication,
first_NF_pokemon.experience_growth,
first_NF_pokemon.height_m,
first_NF_pokemon.weight_kg,
first_NF_pokemon.base_egg_steps,
first_NF_pokemon.base_happiness,
first_NF_pokemon.base_total,
first_NF_pokemon.capture_rate,
first_NF_pokemon.is_legendary,
first_NF_pokemon.percentage_male,
first_NF_pokemon.hp,
first_NF_pokemon.generation,
first_NF_pokemon.speed,
first_NF_pokemon.sp_attack,
first_NF_pokemon.attack,
first_NF_pokemon.sp_defense,
first_NF_pokemon.defense,
first_NF_pokemon.split_ability
FROM first_NF_pokemon, type_table;










