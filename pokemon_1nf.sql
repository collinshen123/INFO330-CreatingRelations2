--creating a new table to split abilities 
CREATE TABLE IF NOT EXISTS split_abilities (
  abilitiy_id VarChar,
  pokedex_number Integer,
  split_ability VarChar
);

--splitting abilities into seperate rows 
INSERT INTO split_abilities (abilitiy_id, pokedex_number, split_ability)
SELECT 
  imported_pokemon_data.abilities,
  imported_pokemon_data.pokedex_number,
  trim(value) as split_ability
FROM imported_pokemon_data,
	json_each('["' || replace(abilities, ',' , '","' ) || '"]')
WHERE trim(value) <> '';

-- removing front and end bracket from abilities
update split_abilities set split_ability = replace(split_ability, '[', '');
update split_abilities set split_ability = replace(split_ability, ']', '');
	
-- creating a new table with updated split_abilities and information from csv
CREATE TABLE IF NOT EXISTS first_NF_pokemon as
SELECT *
FROM imported_pokemon_data
LEFT JOIN split_abilities on imported_pokemon_data.pokedex_number = split_abilities.pokedex_number;

-- removing the original abilities and ability_id
ALTER TABLE first_NF_pokemon DROP COLUMN abilities;
ALTER TABLE first_NF_pokemon DROP COLUMN abilitiy_id;

-- remove former tables
-- DROP TABLE imported_pokemon_data;
-- DROP TABLE split_abilities;

