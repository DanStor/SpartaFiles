DROP TABLE IF EXISTS heroes;

CREATE TABLE heroes (
  id SERIAL PRIMARY KEY,
  name VARCHAR(127),
  fact TEXT,
  alignment BOOLEAN,
  image TEXT,
  img_alt VARCHAR(127)
);

-- Heroes
INSERT INTO heroes (name, fact, alignment, image, img_alt) VALUES ('Mario', 'Hero, ex-plumber (apparently), dungerees enthusiast and owner of a sentient hat. Saves Princess Peach every other weekend (or thereabouts). Formerly Jump Man.', 'true', '', '');
INSERT INTO heroes (name, fact, alignment, image, img_alt) VALUES ('Luigi', 'Taller twin-brother of Mario, yet constantly trapped in the shadow of his brother. Prefers green over red, but equally as enthisisatic as Mario about dungerees. Will inevitably end up with a sentient hat in the near future. Moonlights as a low-budget Ghost Buster.', 'true', '', '');
INSERT INTO heroes (name, fact, alignment, image, img_alt) VALUES ('Princess Peach', 'Ruler of Toad Kingdom and incapable of hiring a decent security service. Loves pink and Mario.', 'true', '', '');

-- Villians
INSERT INTO heroes (name, fact, alignment, image, img_alt) VALUES ('Bowser', 'Fire-breathing turtle, ruler of thousands of obedient yes men and arch-nemesis of Mario. Repeatedly kidnaps Princess Peach only to be defeated by Mario over and over again!', 'false', '', '');
INSERT INTO heroes (name, fact, alignment, image, img_alt) VALUES ('Baby Bowser', 'Bowser but small and wearing a bib...', 'false', '', '');
