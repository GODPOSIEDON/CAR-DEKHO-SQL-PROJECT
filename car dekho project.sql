use project2;
/*What are all the details for every car in the database?*/
select * from car;
/*How many cars are there in the database in total?*/
select count(*) as count_of_cars from car;
/*How many cars were manufactured in the year 2023?*/
select count(*) as count_of_cars from car where year=2023;
/*How many cars were manufactured in the years 2020, 2021, or 2022?*/
select count(*) as count_of_cars from car where year in(2020,2021,2022);
/*Can you provide a list of the number of cars for each year?*/
select year,count(*) as count_of_cars from car group by year; 
/*How many cars manufactured in the year 2020 use diesel as their fuel type?*/
select year,count(*) as count_of_diesel_cars from car where year=2020 and fuel like '%diesel%';
/*How many cars manufactured in the year 2020 use petrol as their fuel type?*/
select year,count(*) as count_of_petrol_cars from car where year=2020 and fuel like '%petrol%';
/*Can you list the number of cars using diesel fuel for each year?*/
select year,count(*) from car where fuel like '%diesel%' group by year;
/*Can you list the number of cars using petrol fuel for each year?*/
select year,count(*) from car where fuel like '%petrol%' group by year;
/*Can you list the number of cars using CNG (Compressed Natural Gas) fuel for each year?*/
select year,count(*) from car where fuel like '%CNG%' group by year;
/*What are the years in which there are more than 100 cars in the database, and how many cars are in each of those years?*/
select year,count(*) from car group by year having count(*)>100;
/*How many cars in the database were manufactured between the years 2015 and 2023?*/
select count(*) from car where year between 2015 and 2023;
/*Can you provide the details of cars that were manufactured between the years 2015 and 2023?*/
select* from car where year between 2015 and 2023;



