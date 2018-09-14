/*
Language:   T-SQL 
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/earnings-of-employees/problem
*/


SELECT TOP 1 (months * salary) AS earnings, COUNT (*) 
FROM Employee 
GROUP BY months * salary 
ORDER BY earnings  DESC;




/*
Explanation:
-----------------
1- get the top earnings(the maximum total earnings for all employee)
2- count the top earnings(total number of employees who have maximum total earnings)
3- group by is used to tell the COUNT(*) method to group by those values(earnings*salary) i.e. count employees according to this value.

For more information visit: 
https://www.w3schools.com/SQl/sql_groupby.asp
https://www.w3schools.com/sql/sql_top.asp
*/
