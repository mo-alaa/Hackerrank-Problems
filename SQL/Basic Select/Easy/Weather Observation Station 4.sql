/*
Language:   T-SQL 
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/weather-observation-station-4/problem
*/

SELECT (COUNT(CITY))  - (COUNT(DISTINCT CITY))  FROM STATION;
