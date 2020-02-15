/*
Language:   T-SQL 
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/occupations/problem
*/


select  min(Doctor), min(Professor),min(Singer),  min(Actor)
from (
   select name, 
          Row_Number() Over (Partition By Doctor, Professor, Singer, Actor order by name asc) as Rownum,
          case when Doctor=1 then name else Null end as Doctor,
          case when Actor=1 then name else Null end as Actor,
          case when Singer=1 then name else Null end as Singer,
          case when Professor=1 then name else Null end as Professor
   from occupations 
   pivot (count(occupation) for occupation in(Doctor, Professor, Singer, Actor)) as p
  ) t
group by Rownum


/*
Explanation:
-------------
The solution for this problem depends on 2 main ideas: Pivot and RowNumber

Pivot operator simply turns the column output into multiple columns.
While RowNumber assigns an integer sequentially for each row of a particular set of output.

you can start solving this problem by first using the Pivot operator, 
then try to replace the 1 values with the required type(i.e. Doctor, Actor,..) using Case.
after that try to use the Row_Number and group with it, 
because at the end we need the first row to have the first output for each of doctor, actor, singer, proffessor.
and we need the second row to contain the second output for each of doctor, actor, singer, proffessor.
and so on

For more information visit: 
https://www.sqlservertutorial.net/sql-server-basics/sql-server-pivot/
https://www.sqlservertutorial.net/sql-server-window-functions/sql-server-row_number-function/
Ben67366 came up with that solution:
https://www.hackerrank.com/challenges/occupations/forum/comments/483082
*/
