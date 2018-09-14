/*
Language:   T-SQL 
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/the-blunder/problem
*/


SELECT CEILING (AVG(CAST(SALARY AS DECIMAL(7,2))) - AVG(CAST(REPLACE(SALARY,'0','') AS DECIMAL(7,2)))) FROM EMPLOYEES;







/*
Explanation:
-----------------
1- get the average of the input salaries.
2- get the average of salaries without zeros (REPLACE() is used to trim zeros from salaries).

CEILING() returns the smallest integer greater than, or equal to, the specified numeric expression.
CAST() is used to get required precision.

For more information: 
https://docs.microsoft.com/en-us/sql/t-sql/data-types/precision-scale-and-length-transact-sql?view=sql-server-2017
https://docs.microsoft.com/en-us/sql/t-sql/functions/ceiling-transact-sql?view=sql-server-2017
https://www.w3schools.com/sql/func_sqlserver_avg.asp

Another solution using mysql can be: 
SELECT CEIL (AVG(SALARY) - AVG(CAST(REPLACE(SALARY, '0', '') AS DECIMAL(9,2)))) FROM EMPLOYEES;
*/
