DROP TABLE IF EXISTS countries_table;

CREATE TABLE countries_table (

  id SERIAL PRIMARY KEY,
  country_name VARCHAR(30),
  population INTEGER,
  gdp INTEGER,
  capital VARCHAR(30),
  continent VARCHAR(15)
);

INSERT INTO countries_table (
  country_name, population, gdp, capital, continent) VALUES ('Country 1', 1234567, 98765, 'Capital 1', 'Cont 1');
INSERT INTO countries_table (
  country_name, population, gdp, capital, continent) VALUES ('Country 2', 1234567, 98765, 'Capital 2', 'Cont 2');
INSERT INTO countries_table (
  country_name, population, gdp, capital, continent) VALUES ('Country 3', 1234567, 98765, 'Capital 3', 'Cont 3');
INSERT INTO countries_table (
  country_name, population, gdp, capital, continent) VALUES ('Country 4', 1234567, 98765, 'Capital 4', 'Cont 4');
