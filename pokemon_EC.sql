-- inserting name type and attack into p_table (huskichu)
INSERT INTO p_table (type_id, name, classfication, experience_growth, height_m, weight_kg, base_egg_steps, base_happiness, base_total, capture_rate, is_legendary, percentage_male, hp, generation, speed, sp_attack, attack, sp_defense, defense, split_ability)
VALUES (1000, 'Huskichu', 'Mascot', 1000000, 1.8, 13, 5000, 70, 310, 50, 0, 0, 100, 80, 1, 60, 195, 120, 71, 107);

-- Inserting ability into abilities table 
INSERT INTO abilities_table (ability_id, ability)
VALUES (3296878, 'SQL-Attack');

-- inserting weakness information for huskichu
INSERT INTO pokemon_weakness_table (against_bug, against_dark, against_dragon, against_electric, against_fairy, against_fight, against_fire, against_flying, against_ghost, against_grass, against_ground, against_ice, against_normal, against_poison, against_psychic, against_rock, against_steel, against_water)
VALUES (0.25,0.25, 0.25, 0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,2 ,0.25,0.25,0.25);

-- inserting name type and attack into p_table cougarite
INSERT INTO p_table (type_id, name, classfication, experience_growth, height_m, weight_kg, base_egg_steps, base_happiness, base_total, capture_rate, is_legendary, percentage_male, hp, generation, speed, sp_attack, attack, sp_defense, defense, split_ability)
VALUES (1001, 'Cougarite', 'Mascot', 1000001, 1.8, 13, 5000, 70, 310, 50, 0, 0, 100, 80, 1, 80, 0, 0, 0, 0);

-- Inserting ability into abilities table 
INSERT INTO abilities_table (ability_id, ability)
VALUES (329782, 'Slow-Attack');

-- inserting weakness information for huskichu
INSERT INTO pokemon_weakness_table (against_bug, against_dark, against_dragon, against_electric, against_fairy, against_fight, against_fire, against_flying, against_ghost, against_grass, against_ground, against_ice, against_normal, against_poison, against_psychic, against_rock, against_steel, against_water)
VALUES (0.25,0.25, 0.25, 0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,2 ,0.25,0.25, 2);


