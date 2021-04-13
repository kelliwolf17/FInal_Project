show databases;

create database final_project;

use final_project;

show tables;

Select *
from clean_bmi;

Select *
from clean_gym;

Select *
from clean_diabetes;

Select *
from clean_restaurant;

SHOW COLUMNS FROM `clean_restaurant`;


Select cg.State, t1.`Restaurant_Total`, cg.Total AS `Gym_Total`
from clean_gym cg
         join (Select province, count(*) AS `Restaurant_Total` from clean_restaurant cr group by 1) t1
              on cg.State = t1.province
group by 1;


Select province, count(*) AS "Restaurant Total"
from clean_restaurant cr
group by 1;