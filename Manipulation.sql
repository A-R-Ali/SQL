CREATE TABLE friends (
  id INTEGER,
  name TEXT,
  birthday DATE
  );
 INSERT INTO friends (id, name, birthday)
 VALUES (1, 'Ororo Munroe', '1940-05-30');
 INSERT INTO friends (id, name, birthday)
 VALUES (2, 'Fahim Films', '2000-01-19');
 INSERT INTO friends (id, name, birthday)
 VALUES (3, 'Tawhidul Khan', '1999-30-12');
 SELECT * FROM friends;
 UPDATE friends
 SET name = 'Storm'
 WHERE id = 1;
 SELECT * FROM friends;
 ALTER TABLE friends
 ADD COLUMN email TEXT; 
 UPDATE friends 
 SET email = 'storm@codecademy.com'
 WHERE id = 1;
 UPDATE friends
 SET email = 'Films@gmail.com'
 WHERE id = 2;
 UPDATE friends
 SET email = 'Glassankles@hotmail.com'
 WHERE id = 3;
 SELECT * FROM friends;
 DELETE FROM friends
 WHERE id = 1;
 SELECT * FROM friends;
 INSERT INTO friends (id, name, birthday, email)
 VALUES (4, 'Mustafa Walim', '2000-05-30', 'Denchman@hotmail.com');
 INSERT INTO friends (id, name, birthday, email)
 VALUES (5, 'Ryan Rupert', '1999-11-25', 'Hibernation@gmail.com');
 SELECT * FROM friends;
 ALTER TABLE friends
 ADD COLUMN Phone_Number TEXT;
 ALTER TABLE friends
 ADD COLUMN Instagram TEXT;
 SELECT * FROM friends
