/*
Language:   T-SQL 
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/weather-observation-station-5/problem
*/

SELECT TOP 1 CITY, LEN(CITY) FROM STATION ORDER BY LEN(CITY),CITY ASC;
SELECT TOP 1 CITY, LEN(CITY ) FROM STATION ORDER BY LEN(CITY) DESC, CITY ASC;
