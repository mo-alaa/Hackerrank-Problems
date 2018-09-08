/*
Language:   T-SQL 
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/weather-observation-station-3/problem
*/

SELECT DISTINCT CITY FROM STATION WHERE ID % 2 = 0;
