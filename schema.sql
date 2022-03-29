create database vet_clinic;
--CREATE DATABASE

create table animals(
    id bigserial not null primary key,
    name varchar(150) not null ,
    date_of_birth date not null ,
    escape_attempts int ,
    neutered boolean ,
    weight_kg  decimal not null
);
--CREATE TABLE

------------------------------------------------------------------Day 2-------------------------------
--Add a column species of type string to your animals \

alter table animals add column species varchar(50) ;
--ALTER TABLE

------------------------------------------------------------------Day 3-------------------------------
-- Create a table named owners with the following columns:
create table owners (
id bigserial primary key,
full_name varchar(1000),
age int
);
-- CREATE TABLE

-- Create a table named species with the following columns:
create table species (
id bigserial primary key ,
name varchar(100)
);
-- CREATE TABLE

-- Modify animals table:
-- Remove column species
alter table animals drop column  species;
-- ALTER TABLE

-- Add column species_id which is a foreign key referencing species table
alter table animals add column species_id bigint;
-- ALTER TABLE
alter table animals add constraint fk_species foreign key (species_id) references species(id);
-- ALTER TABLE

-- Add column owner_id which is a foreign key referencing the owners table
alter table animals add column owner_id bigint;
-- ALTER TABLE

alter table animals add constraint fk_owners foreign key (owner_id) references owners(id);
-- ALTER TABLE
------------------------DAY 4----------------------------------
--Create a table named vets 
CREATE TABLE vets(
    id bigserial not null primary key ,
    full_name varchar(100) not null,
    age int  not null,
    date_of_graduation date not null
);
--There is a many-to-many relationship between the tables species and vets: a vet can specialize in multiple species, and a species can have multiple vets specialized in it.
-- Create a "join table" called specializations to handle this relationship.
CREATE TABLE specializations(
    id bigserial not null primary key ,
    species_id int,
    vets_id int,
    CONSTRAINT fk_vets FOREIGN KEY(vets_id) REFERENCES vets(id),
    CONSTRAINT fk_species FOREIGN KEY(species_id) REFERENCES species(id)
);
--There is a many-to-many relationship between the tables animals and vets: an animal can visit multiple vets and one vet can be visited by multiple animals.
-- Create a "join table" called visits to handle this relationship, it should also keep track of the date of the visit.
CREATE TABLE visits(
    id bigserial not null primary key ,
    animal_id int,
    vets_id int,
    date_of_visit date,
    CONSTRAINT fk_vets FOREIGN KEY(vets_id) REFERENCES vets(id),
    CONSTRAINT fk_animals FOREIGN KEY(animal_id) REFERENCES animals(id)
);

INSERT INTO visits (animal_id, vets_id, date_of_visit) SELECT * FROM (SELECT id FROM animals) animal_ids, (SELECT id FROM vets) vets_ids, generate_series('1980-01-01'::timestamp, '2021-01-01', '4 hours') visit_timestamp;
--------------------------------------------------------------------------------------                   


                                        -----WEEK 2 DAY 1-----

ALTER TABLE owners ADD COLUMN email VARCHAR(120);

CREATE INDEX visits_animals_id_idx ON visits(animals_id);
CREATE INDEX visits_vets_id_idx ON visits(vets_id);
CREATE INDEX visits_owners_id_idx ON owners(email);