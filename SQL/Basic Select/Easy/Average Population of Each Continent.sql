/*
Language:   T-SQL 
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/average-population-of-each-continent/problem
*/


SELECT DISTINCT(COUNTRY.CONTINENT), AVG(CITY.POPULATION)
FROM  CITY
INNER JOIN COUNTRY ON COUNTRY.CODE = CITY.COUNTRYCODE
GROUP BY CONTINENT;




/*
Explanation:
-------------

For more information visit: 
https://www.w3schools.com/SQl/sql_distinct.asp
https://www.w3schools.com/SQl/sql_count_avg_sum.asp
https://www.w3schools.com/SQl/sql_join.asp 
https://www.w3schools.com/SQl/sql_join_inner.asp
*/
