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