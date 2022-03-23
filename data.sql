
insert into animals (name, date_of_birth, escape_attempts,neutered ,weight_kg)
VALUES ('Agumon','2020-2-3',0,true,10.23);
--INSERT 0 1
insert into animals (name ,date_of_birth, escape_attempts,neutered,weight_kg)
VALUES ('Gabumon','2018-11-15',2,true,8.0);
--INSERT 0 1
insert into animals(name,date_of_birth,escape_attempts,neutered,weight_kg)
VALUES ('Pikachu','2021-1-7',1,false,15.04);
--INSERT 0 1
insert into animals(name,date_of_birth,escape_attempts,neutered,weight_kg)
VALUES ('Devimon','2017-5-12',5,true,11.0);
--INSERT 0 1
------------------------------------------------------------------Day 2-------------------------------

--Animal: His name is Charmander. He was born on Feb 8th, 2020, and currently weighs -11kg. He is not neutered and he has never tried to escape.

insert into animals(name ,date_of_birth ,weight_kg ,neutered ,escape_attempts)
values('Charmander','2020-02-08',-11,false,0);

--Animal: Her name is Plantmon. She was born on Nov 15th, 2022, and currently weighs -5.7kg. She is neutered and she has tried to escape 2 times.

insert into animals (name , date_of_birth,weight_kg,neutered,escape_attempts)
values('Plantmon','2022-11-15',-5.7,true,2);

--Animal: His name is Squirtle. He was born on Apr 2nd, 1993, and currently weighs -12.13kg. He was not neutered and he has tried to 3 times.

insert into animals (name , date_of_birth,weight_kg,neutered,escape_attempts)
values('Squirtle','1993-04-02',-12.13,false,3);

--Animal: His name is Angemon. He was born on Jun 12th, 2005, and currently weighs -45kg. He is neutered and he has tried to escape once.


insert into animals (name , date_of_birth,weight_kg,neutered,escape_attempts)
values('Angemon','2005-06-12',-45.0,true,2);

--Animal: His name is Boarmon. He was born on Jun 7th, 2005, and currently weighs 20.4kg. He is neutered and he has tried to escape 7 times.

insert into animals (name , date_of_birth,weight_kg,neutered,escape_attempts)
values('Boarmon','2005-06-07',20.4,true,7);

-- Animal: Her name is Blossom. She was born on Oct 13th, 1998, and currently weighs 17kg. She is neutered and she has tried to escape 3 times.

insert into animals (name , date_of_birth,weight_kg,neutered,escape_attempts)
values('Blossom','1998-10-13',17,true,3);

-- Animal: His name is Ditto. He was born on May 14th, 2022, and currently weighs 22kg. He is neutered and he has tried to escape 4 times.

insert into animals (name , date_of_birth,weight_kg,neutered,escape_attempts)
values('Ditto','2022-05-14',22,true,4);

------------------------------------------------------------------Day 3-------------------------------
-- Insert the following data into the owners table:
-- Sam Smith 34 years old.
-- Jennifer Orwell 19 years old.
-- Bob 45 years old.
-- Melody Pond 77 years old.
-- Dean Winchester 14 years old.
-- Jodie Whittaker 38 years old.

insert into owners (full_name,age) values ('Sam Smith',34),

insert into animals (name, date_of_birth, escape_attempts,neutered ,weight_kg)
VALUES ('Agumon','2020-2-3',0,true,10.23);
--INSERT 0 1
insert into animals (name ,date_of_birth, escape_attempts,neutered,weight_kg)
VALUES ('Gabumon','2018-11-15',2,true,8.0);
--INSERT 0 1
insert into animals(name,date_of_birth,escape_attempts,neutered,weight_kg)
VALUES ('Pikachu','2021-1-7',1,false,15.04);
--INSERT 0 1
insert into animals(name,date_of_birth,escape_attempts,neutered,weight_kg)
VALUES ('Devimon','2017-5-12',5,true,11.0);
--INSERT 0 1
------------------------------------------------------------------Day 2-------------------------------

--Animal: His name is Charmander. He was born on Feb 8th, 2020, and currently weighs -11kg. He is not neutered and he has never tried to escape.

insert into animals(name ,date_of_birth ,weight_kg ,neutered ,escape_attempts)
values('Charmander','2020-02-08',-11,false,0);

--Animal: Her name is Plantmon. She was born on Nov 15th, 2022, and currently weighs -5.7kg. She is neutered and she has tried to escape 2 times.

insert into animals (name , date_of_birth,weight_kg,neutered,escape_attempts)
values('Plantmon','2022-11-15',-5.7,true,2);

--Animal: His name is Squirtle. He was born on Apr 2nd, 1993, and currently weighs -12.13kg. He was not neutered and he has tried to 3 times.

insert into animals (name , date_of_birth,weight_kg,neutered,escape_attempts)
values('Squirtle','1993-04-02',-12.13,false,3);

--Animal: His name is Angemon. He was born on Jun 12th, 2005, and currently weighs -45kg. He is neutered and he has tried to escape once.


insert into animals (name , date_of_birth,weight_kg,neutered,escape_attempts)
values('Angemon','2005-06-12',-45.0,true,2);

--Animal: His name is Boarmon. He was born on Jun 7th, 2005, and currently weighs 20.4kg. He is neutered and he has tried to escape 7 times.

insert into animals (name , date_of_birth,weight_kg,neutered,escape_attempts)
values('Boarmon','2005-06-07',20.4,true,7);

-- Animal: Her name is Blossom. She was born on Oct 13th, 1998, and currently weighs 17kg. She is neutered and she has tried to escape 3 times.

insert into animals (name , date_of_birth,weight_kg,neutered,escape_attempts)
values('Blossom','1998-10-13',17,true,3);

-- Animal: His name is Ditto. He was born on May 14th, 2022, and currently weighs 22kg. He is neutered and he has tried to escape 4 times.

insert into animals (name , date_of_birth,weight_kg,neutered,escape_attempts)
values('Ditto','2022-05-14',22,true,4);

------------------------------------------------------------------Day 3-------------------------------
-- Insert the following data into the owners table:
-- Sam Smith 34 years old.
-- Jennifer Orwell 19 years old.
-- Bob 45 years old.
-- Melody Pond 77 years old.
-- Dean Winchester 14 years old.
-- Jodie Whittaker 38 years old.

insert into owners (full_name,age) values 
 ('Sam Smith',34),
 ('Jennifer Orwell',19),
 ('Bob',45),
 (' Melody Pond',77),
 (' Dean Winchester',14),
  ('Jodie Whittaker',38);
--   INSERT 0 6

SELECT * FROM OWNERS ;
--   1 | Sam Smith        |  34
--   2 | Jennifer Orwell  |  19
--   3 | Bob              |  45
--   4 |  Melody Pond     |  77
--   5 |  Dean Winchester |  14
--   6 | Jodie Whittaker  |  38

-- Insert the following data into the species table:
-- Pokemon
-- Digimon
insert into species (name) values 
('Pokemon'),
('Digimon');
-- INSERT 0 2
SELECT * FROM species ;
--   1 | Pokemon
--   2 | Digimon

-- Modify your inserted animals so it includes the species_id value:
-- If the name ends in "mon" it will be Digimon
update animals set  species_id = 2 where name like '%mon';

-- All other animals are Pokemon
update animals set  species_id = 1 where name not like '%mon';

-- Modify your inserted animals to include owner information (owner_id):
-- Sam Smith owns Agumon.
update animals set owner_id=1 where name='Agumon';
-- UPDATE 1
-- Jennifer Orwell owns Gabumon and Pikachu.
update animals set owner_id=2 where name in ('Gabumon', 'Pikachu');
-- UPDATE 2
-- Bob owns Devimon and Plantmon.
update animals set owner_id=3 where name in ('Devimon', 'Plantmon');
-- UPDATE 1
-- Melody Pond owns Charmander, Squirtle, and Blossom.
update animals set owner_id=4 where name in ('Charmander', 'Squirtle','Blossom');
-- UPDATE 3
-- Dean Winchester owns Angemon and Boarmon.
update animals set owner_id=5where name in ('Angemon', 'Boarmon');
-- UPDATE 2