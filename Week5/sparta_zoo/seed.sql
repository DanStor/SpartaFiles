DROP TABLE IF EXISTS animals;

CREATE TABLE animals (
  id SERIAL PRIMARY KEY,
  name VARCHAR(127),
  fact TEXT
);

INSERT INTO animals (name, fact) VALUES ('Gifraffe', 'Mythical giraffe-like creature. Said to live in the offices of some young software developers.');
INSERT INTO animals (name, fact) VALUES ('Woodlouse', 'Tiny armadillo...');
INSERT INTO animals (name, fact) VALUES ('Elephant', 'Long trunk, big ears, awesome tusks. Nuff said!');
INSERT INTO animals (name, fact) VALUES ('Badger', 'Spawn of hell. Violent and angry towards LITERALLY everything. Avoid.');
