select d.Name as Department, e.Name Employee, de.Salary from Employee as e, Department as d, (select max(Salary) as Salary, DepartmentId from Employee group by DepartmentId order by Salary desc) as de where e.Salary=de.Salary and d.Id=e.DepartmentId and e.DepartmentId=de.DepartmentId;