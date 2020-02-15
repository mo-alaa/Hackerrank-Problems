/*
Language:   T-SQL 
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/what-type-of-triangle/problem
*/
SELECT 
CASE 
WHEN ((A+B)>C) AND ((A+C)>B) AND ((B+C)>A) THEN
    CASE 
    WHEN (A=B) AND (B=C) THEN 'Equilateral'
    WHEN (A=B) OR (A=C) OR (B=C) THEN 'Isosceles'
    WHEN (A<>B) AND (A<>C) AND (B<>C) THEN 'Scalene'
    END
ELSE 'Not A Triangle'
END
FROM TRIANGLES;
