-- insert into the human tables
insert into human values
(01, 'John Doe', 18, 'M', 'O+', 'AA');
insert into human values
(02, 'Will Bruce', 23, 'M', 'B+', 'AS');
insert into human values
(03, 'Shawn Micheals', 25, 'M', 'O+', 'AA');
insert into human values
(04, 'Jane Doe', 18, 'F', 'B-', 'AS');
insert into human values
(05, 'Ken Green', 20, 'M', 'O+', 'SS');
insert into human values
(06, 'Sam Lee', 19, 'M', 'A-', 'AS');
insert into human values
(07, 'Agbabiaka Ajala', 22, 'M', 'O', 'AA');
insert into human values
(08, 'Ebuka Idoya', 24, 'M', 'O+', 'AA');
insert into human values
(09, 'Adamu Haruna', 29, 'M', 'O+', 'AS');
insert into human values
(10, 'Bisola Wayans', 18, 'F', 'O+', 'AA');

-- insert Method 2
-- insert into the games table
insert into games values
(010, 'Sophia the First', 50.34, 10, 'Best Buy Store'),
(011, 'God of War 3', 70.25, 5, 'Jumia Stores'),
(012, 'Rocketeer', 50.34, 10, 'Konga'),
(013, 'God of War 2', 60.99, 5, 'Jumia Stores'),
(014, 'Call of Duty', 75.34, 10, 'Best Buy Store'),
(015, 'Walking Dead', 40.24, 8, 'Konga'),
(016, 'Van Heilsing', 60.99, 10, 'Konga'),
(017, 'GTA', 50.34, 10, 'Atlantean Store'),
(018, 'Hitman 3', 72.34, 10, 'Andromeda Store'),
(019,'Clash of the Titans',50.34,10,'Atlantan Store');

-- insert into gamespurchase

insert into GamePurchase(humanID, gameId) values

(03,010),
(03,014),
(03,012),
(03,015),
(04,010),
(04,012),
(04,013),
(05,010),
(05,015),

(06,011),
(06,012),
(06,019),
(07,010),
(07,011),
(07,016),
(08,010);

-- To update A Table--
UPDATE Human
SET age = 29, name = 'Shawn Micheals'
where name = 'Shawn Micheals';

UPDATE Games
SET price = 88.86
where Gamename = 'God of War 2';

-- To Add a column to an existing table --
ALTER TABLE Games
ADD gameGenre varChar(45) default('None');

UPDATE Games
SET gameGenre = 'Action'
where Gamename = 'God of War 2';
UPDATE Games
SET gameGenre = 'Action'
where Gamename = 'Call of Duty';
UPDATE Games
SET gameGenre = 'Adventure'
where Gamename = 'Walking Dead';
UPDATE Games
SET gameGenre = 'Adventure'
where Gamename = 'GTA';
UPDATE Games
SET gameGenre = 'Adventure'
where Gamename = 'Hitman 3';
UPDATE Games
SET gameGenre = 'War'
where Gamename = 'Clash Of The Titan';
UPDATE Games
SET gameGenre = 'Action'
where Gamename = 'Van Heilsing';





-- To drop a column to an existing table--
ALTER TABLE Games
DROP column gameGenre;

-- To delete a row--
DELETE FROM gamepurchase
where humanID  = 2;

-- delete all in a table--
DELETE FROM human;

-- Add primary key to an existing table --
CREATE TABLE Persons(
	ID int NOT NULL,
    LastName varChar(255) NOT NULL,
    FirstName varChar(255) ,
    Age int 
);

-- Add the primary key
ALTER TABLE Persons
ADD constraint PK_Persons PRIMARY KEY (ID,LastName);

-- For SQL SERVER--
-- ALTER TABLE Persons
-- ADD PRIMARY KEY (ID);
 