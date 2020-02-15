/*
Language:   T-SQL 
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/binary-search-tree-1/problem
*/

select case
            when p is null Then Concat(n, ' Root')
            when n in (select distinct p from BST) Then Concat(n, ' Inner')
            else Concat(n, ' Leaf')
        End as output
from BST 
order by n asc
