CREATE TABLE IF NOT EXISTS buildings 
(name VARCHAR(80) NOT NULL, 
shortname VARCHAR(10) UNIQUE,
id INTEGER PRIMARY KEY AUTOINCREMENT);


CREATE TABLE IF NOT EXISTS rooms 
(number INTEGER, 
buildingid INTEGER PRIMARY KEY REFERENCES buildings(id), 
seating INTEGER);


INSERT INTO buildings (name, shortname) VALUES ('Hagget', 'Hag');
INSERT INTO buildings (name, shortname) VALUES ('Mary Gates Hall', 'MGH');
INSERT INTO buildings (name, shortname) VALUES ('Husky Union Building', 'HUB');
INSERT INTO buildings (name, shortname) VALUES ('Savery Hall', 'SAV');
INSERT INTO buildings (name, shortname) VALUES ('Lander Hall', 'Lander');



INSERT INTO rooms VALUES (101, (SELECT id FROM buildings WHERE name = 'Hagget'), 200);
INSERT INTO rooms VALUES (102, (SELECT id FROM buildings WHERE name = 'Mary Gates Hall'), 250);
INSERT INTO rooms VALUES (103, (SELECT id FROM buildings WHERE name = 'Husky Union Building'), 300);
INSERT INTO rooms VALUES (104, (SELECT id FROM buildings WHERE name = 'Savery Hall'), 350);
INSERT INTO rooms VALUES (105, (SELECT id FROM buildings WHERE name = 'Lander Hall'), 200);

