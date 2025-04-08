-- create database
CREATE DATABASE crimedata;
USE crimedata;


-- create table
CREATE TABLE crimes (
    State_UT VARCHAR(255),
    District VARCHAR(255),
    Year INT,
    Murder INT DEFAULT 0,
    RAPE INT DEFAULT 0,
    Kidnapping INT DEFAULT 0,
    Dacoity INT DEFAULT 0,
    Burglary INT DEFAULT 0,
    Theft INT DEFAULT 0,
    Robbery INT DEFAULT 0,
    Riots INT DEFAULT 0,
    Dowery_Death INT DEFAULT 0,
    Assault_on_Women INT DEFAULT 0,
    Import_girls INT DEFAULT 0
);


SELECT * FROM crimedata.crimes;
