/*
Language:   T-SQL 
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/weather-observation-station-11/problem
*/


SELECT DISTINCT CITY FROM STATION WHERE CITY LIKE '[^AEIOU]%' OR CITY LIKE '%[^AEIOU]';







/*
Explanation:
-----------------
The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
^ - The caret inside brackets is a negating character (i.e means not the following when at the start of brackets[])
% - The percent sign represents zero, one, or multiple characters
% - The percent sign is a wildcard character. A wildcard character is used to substitute any other character(s) in a string.
For more information visit: https://www.w3schools.com/sql/sql_like.asp  https://www.w3schools.com/sql/sql_wildcards.asp
*/
