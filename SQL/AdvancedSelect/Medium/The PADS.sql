/*
Language:   T-SQL 
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/the-pads/problem
*/

select Concat(Name,'(',SUBSTRING(Occupation, 1, 1),')') from OCCUPATIONS order by Name Asc;
select Concat('There are a total of ',Count(Occupation), ' ', Lower(Occupation), 's.') 
from Occupations group by Occupation order by Count(Occupation) asc, Occupation asc;
