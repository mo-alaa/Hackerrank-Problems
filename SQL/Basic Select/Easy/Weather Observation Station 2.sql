/*
Language:   T-SQL 
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/weather-observation-station-2/problem
*/


SELECT CAST(SUM(LAT_N) AS DECIMAL(10,2)), CAST (SUM(LONG_W) AS DECIMAL(10,2)) FROM STATION;
                                                                       






/*
Explanation:
-----------------

For more information about precision visit: 
https://docs.microsoft.com/en-us/sql/t-sql/data-types/precision-scale-and-length-transact-sql?view=sql-server-2017
*/
