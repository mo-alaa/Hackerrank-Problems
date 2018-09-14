/*
Language:   T-SQL 
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/african-cities/problem
*/


SELECT CITY.NAME 
FROM CITY
INNER JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE COUNTRY.CONTINENT = 'AFRICA';




/*
Explanation:
-------------
For more information about inner join visit: 
https://www.w3schools.com/SQl/sql_join.asp 
https://www.w3schools.com/SQl/sql_join_inner.asp
*/
