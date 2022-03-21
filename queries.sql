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
