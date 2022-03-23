--Find all animals whose name ends in "mon".

select * from animals where name like '%mon';
--   1 | Agumon  | 2020-02-03    |               0 | t        |     10.23
--   2 | Gabumon | 2018-11-15    |               2 | t        |       8.0
--   4 | Devimon | 2017-05-12    |               5 | t        |      11.0

--List the name of all animals born between 2016 and 2019.

select name from animals where date_of_birth between '2016-01-01'and '2019-12-31';
--  Gabumon
--  Devimon

--List the name of all animals that are neutered and have less than 3 escape attempts.
select name from animals where neutered= true and escape_attempts<3;
--  Agumon
--  Gabumon

--List date of birth of all animals named either "Agumon" or "Pikachu".
select date_of_birth from  animals where name='Agumon' or name='Pikachu' ;
--  2020-02-03
--  2021-01-07

--List name and escape attempts of animals that weigh more than 10.5kg
select name ,escape_attempts from animals where weight_kg > 10.5;
--  Pikachu |               1
--  Devimon |               5

--Find all animals that are neutered.
select name from animals where neutered =true;
--  Agumon
--  Gabumon
--  Devimon

--Find all animals not named Gabumon.
select * from animals where not name='Gabumon';
--   1 | Agumon  | 2020-02-03    |               0 | t        |     10.23
--   3 | Pikachu | 2021-01-07    |               1 | f        |     15.04
--   4 | Devimon | 2017-05-12    |               5 | t        |      11.0

--Find all animals with a weight between 10.4kg and 17.3kg (including the animals with the weights that equals precisely 10.4kg or 17.3kg)
 select  name from  animals where  weight_kg between 10.4 and 17.3 ;
--   3 | Pikachu | 2021-01-07    |               1 | f        |     15.04
--   4 | Devimon | 2017-05-12    |               5 | t        |      11.0
------------------------------------------------------------------Day 2-------------------------------
-- Inside a transaction update the animals table by setting the species column to unspecified. 
--Verify that change was made. Then roll back the change and verify that species columns went back to the state before transaction.

begin;
--BEGIN
update animals set species ='unspecified';
--UPDATE 11
select species from animals;

rollback;
--ROLLBACK
select species from animals;
/*











*/
begin;
update animals set species ='digimon' where name like '%mon';
-- UPDATE 6
update animals set species ='pokemon' where species is null ;
--UPDATE 5
select name ,species from animals;
commit;
-- COMMIT
select name ,species from animals;
--  Agumon     | digimon
--  Gabumon    | digimon
--  Devimon    | digimon
--  Plantmon   | digimon
--  Angemon    | digimon
--  Boarmon    | digimon
--  Pikachu    | pokemon
--  Charmander | pokemon
--  Squirtle   | pokemon
--  Blossom    | pokemon
--  Ditto      | pokemon

-- Now, take a deep breath and... Inside a transaction delete all records in the animals table, then roll back the transaction.
begin;
-- BEGIN
delete from animals;
-- DELETE 11
rollback;
-- ROLLBACK

-- After the roll back verify if all records in the animals table still exist. After that you can start breath as usual ;)
select * from animals ;
--   1 | Agumon     | 2020-02-03    |               0 | t        |     10.23 | digimon
--   2 | Gabumon    | 2018-11-15    |               2 | t        |       8.0 | digimon
--   4 | Devimon    | 2017-05-12    |               5 | t        |      11.0 | digimon
--   6 | Plantmon   | 2022-11-15    |               2 | t        |      -5.7 | digimon
--   8 | Angemon    | 2005-06-12    |               2 | t        |      -5.7 | digimon
--   9 | Boarmon    | 2005-06-07    |               7 | t        |      20.4 | digimon
--   3 | Pikachu    | 2021-01-07    |               1 | f        |     15.04 | pokemon
--   5 | Charmander | 2020-02-08    |               0 | f        |       -11 | pokemon
--   7 | Squirtle   | 1993-04-02    |               3 | f        |    -12.13 | pokemon
--  10 | Blossom    | 1998-10-13    |               3 | t        |        17 | pokemon
--  11 | Ditto      | 2022-05-14    |               4 | t        |        22 | pokemon

--Inside a transaction:
begin;
--1.Delete all animals born after Jan 1st, 2022.
delete from animals where date_of_birth > '2022-1-1';
-- DELETE 2
--2.Create a savepoint for the transaction.
savepoint delete_date;
update animals set weight_kg=weight_kg *-1;
--UPDATE 9
--4.Rollback to the savepoint
ROLLBACK TO delete_data;
--5.Update all animals' weights that are negative to be their weight multiplied by -1.
update animals set weight_kg=weight_kg*-1 where weight_kg<0;
-- UPDATE 3
commit;
-- COMMIT
select * from animals;
--   1 | Agumon     | 2020-02-03    |               0 | t        |     10.23 | digimon
--   2 | Gabumon    | 2018-11-15    |               2 | t        |       8.0 | digimon
--   4 | Devimon    | 2017-05-12    |               5 | t        |      11.0 | digimon
--   9 | Boarmon    | 2005-06-07    |               7 | t        |      20.4 | digimon
--   3 | Pikachu    | 2021-01-07    |               1 | f        |     15.04 | pokemon
--  10 | Blossom    | 1998-10-13    |               3 | t        |        17 | pokemon
--   8 | Angemon    | 2005-06-12    |               2 | t        |       5.7 | digimon
--   5 | Charmander | 2020-02-08    |               0 | f        |        11 | pokemon
--   7 | Squirtle   | 1993-04-02    |               3 | f        |     12.13 | pokemon

---Write queries to answer the following questions:

--How many animals are there?
select count(*) from animals;
-- 9

-- How many animals have never tried to escape?
select count(escape_attempts) from animals where escape_attempts=0;
-- 2

-- What is the average weight of animals?
select avg(weight_kg) from animals;
--  12.2777777777777778

-- Who escapes the most, neutered or not neutered animals?
select neutered ,max(escape_attempts) from animals group by neutered;
--  f        |   3
--  t        |   7

-- What is the minimum and maximum weight of each type of animal?
select species ,min(weight_kg),max(weight_kg) from animals group by species;
--  pokemon |  11 |   17
--  digimon | 5.7 | 20.4

-- What is the average number of escape attempts per animal type of those born between 1990 and 2000?
select species ,round(avg(escape_attempts)) from animals where date_of_birth between '1990-01-01' and '2000-12-31' group by species;
--  pokemon |     3
------------------------------------------------------------------Day 3-------------------------------
-- What animals belong to Melody Pond?
select animals.name  from animals join owners on animals.owner_id=owners.id where full_name=' Melody Pond';
--  Blossom
--  Charmander
--  Squirtle

-- List of all animals that are pokemon (their type is Pokemon).
select animals.name , species.name from animals join species on animals.species_id=species.id where species.name='Pokemon';
--  Pikachu    | Pokemon
--  Blossom    | Pokemon
--  Charmander | Pokemon
--  Squirtle   | Pokemon

-- List all owners and their animals, remember to include those that don't own any animal.
select owners.full_name ,animals.name from animals join owners on animals.owner_id =owners.id;
--  Sam Smith        | Agumon
--  Jennifer Orwell  | Pikachu
--  Jennifer Orwell  | Gabumon
--  Bob              | Devimon
--   Melody Pond     | Squirtle
--   Melody Pond     | Charmander
--   Melody Pond     | Blossom
--   Dean Winchester | Angemon
--   Dean Winchester | Boarmon

-- How many animals are there per species?
select species.name ,count(animals.species_id) from animals join species on species.id =animals.species_id group by species.name ;
--  Pokemon |     4
--  Digimon |     5

-- List all Digimon owned by Jennifer Orwell.
select animals.name ,owners.full_name from animals join owners on animals.owner_id = owners.id join species on animals.species_id = owners.id where species.name='Digimon' and owners.full_name='Jennifer Orwell';
-- Gabumon | Jennifer Orwell

-- List all animals owned by Dean Winchester that haven't tried to escape.
select animals.name from animals join owners on animals.owner_id=owners.id where owners.full_name='  Dean Winchester' and animals.escape_attempts=0;
-- Who owns the most animals?
--  Melody Pond |             3