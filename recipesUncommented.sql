create table Recipe (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name VARCHAR(25), description VARCHAR(50), instructions VARCHAR(500)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
create table Ingredient (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name VARCHAR(50)) ENGINE=InnoDB DEFAULT CHARSET=utf8; 
create table Measure (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name VARCHAR(30)) ENGINE=InnoDB DEFAULT CHARSET=utf8; 

create table RecipeIngredient (recipe_id INT NOT NULL, ingredient_id INT NOT NULL, measure_id INT, amount INT, 
	CONSTRAINT fk_recipe FOREIGN KEY(recipe_id) REFERENCES Recipe(id), 
	CONSTRAINT fk_ingredient FOREIGN KEY(ingredient_id) REFERENCES Ingredient(id), 
	CONSTRAINT fk_measure FOREIGN KEY(measure_id) REFERENCES Measure(id)) 
	ENGINE=InnoDB DEFAULT CHARSET=utf8; 


INSERT INTO Measure (name) VALUES('CUP'), ('TEASPOON'), ('TABLESPOON'), ('WHOLE');

INSERT INTO Ingredient (name) VALUES('egg'), ('salt'), ('sugar'), ('chocolate'), ('vanilla extract'), ('flour');

INSERT INTO Recipe (name, description, instructions) VALUES('Boiled Egg', 'A single boiled egg', 'Add egg to cold water. Bring water to boil. Cook.');

INSERT INTO Recipe (name, description, instructions) VALUES('Chocolate Cake', 'Yummy cake', 'Add eggs, flour, chocolate to pan. Bake at 350 for 1 hour');

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (1, 1, NULL, 1);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 1, NULL, 3);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 2, 2, 1); 

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 3, 1, 2);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 4, 1, 1);


INSERT INTO Measure (name) VALUES ('Pound');
INSERT INTO Ingredient (name) VALUES ('Ground Beef'),('Water'),('Milk');
INSERT INTO Recipe (name, description, instructions) VALUES ('Hamburger Helper', 'Tasty Cheeseburger Hamburger Helper', 'Brown ground beef in skillet; drain. Stir in water and bring to boil , milk, sauce mix and pasta. Heat to boiling. Reduce heat. Cover; simmer about 10 minutes, stirring occasionally, until pasta is tender. Remove from heat. Refrigerate leftovers.');

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (3, 7, 5, 2);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (3, 8, 1, 1);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (3, 9, 1, 4);

--
INSERT INTO Ingredient (name) VALUES ('noodle packet'),('seasoning packet');
INSERT INTO Recipe (name, description, instructions) VALUES ('Chicken Top Ramen', 'Cheap fake noodles for college students!', 'Put noodles in pot, then add water and bring to boil, drain noodles, do not wash them, let sit for 3 minutes and then enjoy.');

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (4, 8, 1, 2);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (4, 10, NULL, 1);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (4, 11, NULL, 1);
--
INSERT INTO Ingredient (name) VALUES ('elbow noodles'),('butter'),('cheesey sauccceeee pack');
INSERT INTO Recipe (name, description, instructions) VALUES ('Mac N Cheese', 'Enough to clog your arteries!', 'Put noodles in pot, boil hot water till noodles are soft, drain noodles, dO nOt RiNsE, ADD cheese butter and milk into pot, stir and enjoy!');

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (5, 8, 1, 3);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (5, 9, 1, 1);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (5, 12, 1, 4);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (5, 13, 3, 16);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (5, 14, NULL, 1);
--
INSERT INTO Ingredient (name) VALUES ('Reeses Puffs');
INSERT INTO Recipe (name, description, instructions) VALUES ('Reeses Puffs', 'Peanut butter chocolate flavor!', 'Put cereal into bowl, fill bowl with all the milk, eat with spoon or hands whatever you choose.');

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (6, 9, 1, 3);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (6, 15, 1, 2);

--

INSERT INTO Measure (name) VALUES ('fl-oz');
INSERT INTO Ingredient (name) VALUES ('baking soda'),('baking powder'),('syrup');
INSERT INTO Recipe (name, description, instructions) VALUES ('Pancakes', 'A sweet fluffy breakfast!', 'Mix in salt, sugar, baking soda, baking powder, and flour. Slowly mix in milk, water, butter, and eggs. Once all clumps are out of batter, laddel some ontop hot pan that has been buttered. Flip once bubbles come through, cook till golden brown. Enjoy your breakfast !');

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (7, 1, NULL, 2);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (7, 2, 2, 1);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (7, 3, 1, 1);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (7, 6, 1, 3);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (7, 9, 1, 2);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (7, 13, 3, 4);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (7, 16, 2, 2);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (7, 17, 2, 2);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (7, 18, 6, 8);
