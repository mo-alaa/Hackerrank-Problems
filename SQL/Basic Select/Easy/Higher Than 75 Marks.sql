/*
Language:   T-SQL 
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/more-than-75-marks/problem
*/


SELECT NAME FROM STUDENTS WHERE MARKS>75 ORDER BY RIGHT(NAME,3), ID ASC;







/*
Explanation:
-------------
Order by the last 3 charachters, then order ascendingly by ID
The RIGHT() function extracts a substring from a string (starting from right).
For more information visit: https://www.w3schools.com/sql/func_sqlserver_right.asp
*/
