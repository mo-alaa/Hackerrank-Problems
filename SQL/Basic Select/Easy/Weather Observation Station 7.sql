/*
Language:   T-SQL 
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/weather-observation-station-7/problem
*/


SELECT DISTINCT CITY FROM STATION WHERE CITY like '%[AEIOU]';








/*
Explanation:
-----------------
The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
% - The percent sign represents zero, one, or multiple characters
% - Is a wildcard character. A wildcard character is used to substitute any other character(s) in a string.
For more information: https://www.w3schools.com/sql/sql_like.asp  https://www.w3schools.com/sql/sql_wildcards.asp

Another solution without using regular expressions is: 
SELECT DISTINCT CITY FROM STATION WHERE CITY LIKE '%A' OR CITY LIKE '%I' OR CITY LIKE '%E' OR CITY LIKE'%O' OR CITY LIKE '%U';
*/
