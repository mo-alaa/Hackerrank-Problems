/*
Language:   T-SQL 
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/the-company/problem
*/


select  Company.company_code, Company.founder, 
        count(distinct Lead_Manager.lead_manager_code),
        count(distinct Senior_Manager.senior_manager_code),
        count(distinct Manager.manager_code),
        count(distinct Employee.employee_code)
from Company, Lead_Manager, Senior_Manager, Manager, Employee
where Company.company_code = Lead_Manager.company_code
and   Lead_Manager.lead_manager_code = Senior_Manager.lead_manager_code
and Senior_Manager.senior_manager_code =  Manager.senior_manager_code
and Manager.manager_code = Employee.manager_code
group by  Company.company_code, Company.founder
order by  Company.company_code, Company.founder

/*OR*/

select  Company.company_code, Company.founder, 
        count(distinct Lead_Manager.lead_manager_code),
        count(distinct Senior_Manager.senior_manager_code),
        count(distinct Manager.manager_code),
        count(distinct Employee.employee_code)
from Company, Lead_Manager, Senior_Manager, Manager, Employee
where Company.company_code = Lead_Manager.company_code
and   Lead_Manager.lead_manager_code = Senior_Manager.lead_manager_code
and Senior_Manager.senior_manager_code =  Manager.senior_manager_code
and Manager.manager_code = Employee.manager_code
group by  Company.company_code, Company.founder
order by  Company.company_code, Company.founder

/*
Explanation:
-------------
Any of the above select statements will solve the problem.
The second one uses JOIN while the first does not.
*/
