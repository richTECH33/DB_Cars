use cars2;

--1) Read Cars Data
SELECT * FROM car_data;

--2) Client asked me to show Total cars: To get a count of total records
select count(*) from car_data;

--3) Client asked me to show How many cars will be available in 2023?
select count(*) from cars.car_data where year = 2023

--4) The Client asked me to show how many cars will be available in 2020, 2021, and 2022 ?
select count(*) from cars.car_data where year in (2020,2021,2022) group by year;

--Client asked me to print Total number of cars by year
select year, count(*) from cars.car_data group by year;

--Client Asked me how many diesel cars will be available in 2020
select count(*) from cars.car_data where year = 2020 and fuel = 'Diesel';

--Client Asked me how many petrol cars will be available in 2020
select count(*) from cars.car_data where year = 2020 and fuel = 'Petrol';

--Client asked me to print all fuel cars (Petrol, Diesel, CNG) for all years
select year, count(*) from cars.car_data where fuel = 'Diesel' group by year;
select year, count(*) from cars.car_data where fuel = 'Petrol' group by year;
select year, count(*) from cars.car_data where fuel = 'CNG' group by year;

--Client asked for the year that has more than 100 cars
select year, count(*) from cars.car_data group by year having count(*)> 100

--Client asked for count of all car details between 2015 and 2023
select count(*) from cars.car_data where year between 2015 and 2023;

--Client asked for all car details between 2015 and 2023
select * from cars.car_data where year between 2015 and 2023;



