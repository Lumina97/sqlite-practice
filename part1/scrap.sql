CREATE TABLE Users(
  id INTEGER PRIMARY KEY ,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  motto TEXT
);
INSERT INTO Users (first_name,last_name,motto) 
VALUES ('Jon','Higgz','I love coding');

INSERT INTO Users (first_name,last_name,motto)
 VALUES ('Andrey','Rusterton','I love coding even more');

INSERT INTO Users (first_name,last_name,motto)
 VALUES ('Peter','Garboni','I love coding even more');


 CREATE TABLE Dogs(id INTEGER PRIMARY KEY, name TEXT NOT NULL);
 INSERT INTO Dogs (name)
 VALUES ('DOOMSLAYER');
 
 INSERT INTO Dogs (name)
 VALUES ('Zoey');
 
 INSERT INTO Dogs (name)
 VALUES ('Jefferey');


CREATE TABLE Favorites(
  id INTEGER PRIMARY KEY,
  user_id INTEGER NOT NULL,
  dog_id INTEGER NOT NULL,
  UNIQUE(user_id,dog_id),
  FOREIGN KEY(dog_id) REFERENCES dogs(id),
  FOREIGN KEY(user_id) REFERENCES users(id)
);

INSERT INTO Favorites (user_id,dog_id) 
VALUES (3,1);

INSERT INTO Favorites (user_id,dog_id) 
VALUES (1,1);

INSERT INTO Favorites (user_id,dog_id) 
VALUES (2,1);

INSERT INTO Favorites (user_id,dog_id) 
VALUES (2,2);

INSERT INTO Favorites (user_id,dog_id) 
VALUES (1,3);
