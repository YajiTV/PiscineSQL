SELECT
  UPPER(employees.FirstName || ' ' || employees.LastName) AS FullName,
  COUNT(customers.CustomerId) AS NumberOfCustomers
FROM employees
JOIN customers
  ON employees.EmployeeId = customers.SupportRepId
WHERE employees.Title = 'Sales Support Agent'
GROUP BY employees.EmployeeId, employees.FirstName, employees.LastName
ORDER BY NumberOfCustomers ASC;
