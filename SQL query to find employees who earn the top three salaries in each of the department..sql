--Question
/* Write a SQL query to find employees who earn the top three salaries in each of the department. 
For the above tables, your SQL query should return the following rows (order of rows does not matter).
 */
WITH EMPLOYEECTE AS 
(
    SELECT  DEPARTMENT.NAME AS DEPARTMENT, EMPLOYEE.NAME AS EMPLOYEE, SALARY, 
            DENSE_RANK() OVER (PARTITION BY DEPARTMENT.NAME ORDER BY EMPLOYEE.SALARY DESC) AS DENSERANK
    FROM    EMPLOYEE
    JOIN    DEPARTMENT
    ON      EMPLOYEE.DEPARTMENTID = DEPARTMENT.ID
)
SELECT  DEPARTMENT, EMPLOYEE, SALARY
FROM    EMPLOYEECTE
WHERE   DENSERANK <= 3