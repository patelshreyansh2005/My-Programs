CREATE PROCEDURE PR_InsertEmployee (
  @FirstName nvarchar(50),
  @LastName nvarchar(50),
  @Email nvarchar(100),
  @PhoneNumber nvarchar(15),
  @HireDate date,
  @JobTitle nvarchar(50),
  @Salary decimal(10, 2),
  @DepartmentId int
)
AS
BEGIN
  INSERT INTO Employee (First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Title, Salary, Department_Id)
  VALUES (@FirstName, @LastName, @Email, @PhoneNumber, @HireDate, @JobTitle, @Salary, @DepartmentId);
END;

-------------------------------------------------------

CREATE PROCEDURE PR_GetEmployeeById (
  @EmployeeId int
)
AS
BEGIN
  SELECT *
  FROM Employee
  WHERE Employee_Id = @EmployeeId;
END;

-------------------------------------------------------
CREATE PROCEDURE PR_UpdateEmployee (
  @EmployeeId int,
  @FirstName nvarchar(50),
  @LastName nvarchar(50),
  @Email nvarchar(100),
  @PhoneNumber nvarchar(15),
  @HireDate date,
  @JobTitle nvarchar(50),
  @Salary decimal(10, 2),
  @DepartmentId int
)
AS
BEGIN
  UPDATE Employee
  SET First_Name = @FirstName,
      Last_Name = @LastName,
      Email = @Email,
      Phone_Number = @PhoneNumber,
      Hire_Date = @HireDate,
      Job_Title = @JobTitle,
      Salary = @Salary,
      Department_Id = @DepartmentId
  WHERE Employee_Id = @EmployeeId;
END;

-------------------------------------------------------
CREATE PROCEDURE PR_DeleteEmployee (
  @EmployeeId int
)
AS
BEGIN
  DELETE FROM Employee
  WHERE Employee_Id = @EmployeeId;
END;

-------------------------------------------------------
CREATE PROCEDURE PR_GetEmployeesByDepartment (
  @DepartmentId int
)
AS
BEGIN
  SELECT *
  FROM Employee
  WHERE Department_Id = @DepartmentId;
END;

-------------------------------------------------------
CREATE PROCEDURE PR_GetProjectsByEmployee (
  @EmployeeId int
)
AS
BEGIN
  SELECT p.*
  FROM Project p
  INNER JOIN EmployeeProject ep ON p.Project_Id = ep.Project_Id
  WHERE ep.Employee_Id = @EmployeeId;
END;

-------------------------------------------------------
CREATE PROCEDURE PR_GetEmployeesByProject (
  @ProjectId int
)
AS
BEGIN
  SELECT e.*
  FROM Employee e
  INNER JOIN EmployeeProject ep ON e.Employee_Id = ep.Employee_Id
  WHERE ep.Project_Id = @ProjectId;
END;

-------------------------------------------------------
CREATE PROCEDURE PR_GetDepartmentDetails (
  @DepartmentId int
)
AS
BEGIN
  SELECT d.*, COUNT(e.Employee_Id) AS EmployeeCount
  FROM Department d
  LEFT JOIN Employee e ON d.Department_Id = e.Department_Id
  WHERE d.Department_Id = @DepartmentId
  GROUP BY d.Department_Id, d.Department_Name;
END;

-------------------------------------------------------
CREATE PROCEDURE PR_GetDepartmentProjectBudget (
  @DepartmentId int
)
AS
BEGIN
  SELECT SUM(Budget) AS TotalBudget
  FROM Project
  WHERE Department_Id = @DepartmentId;
END;

-------------------------------------------------------
CREATE PROCEDURE PR_GetEmployeesWithDetails
AS
BEGIN
  SELECT e.*, d.Department_Name, p.Project_Name (optional)
  FROM Employee e
  LEFT JOIN Department d ON e.Department_Id = d.Department_Id
  LEFT JOIN EmployeeProject ep ON e.Employee_Id = ep.Employee_Id
  LEFT JOIN Project p ON ep.Project_Id = p.Project_Id
  ORDER BY e.Employee_Id;
END;

-------------------------------------------------------
