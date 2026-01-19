SELECT c.FirstName, c.LastName
FROM customers AS c
JOIN employees AS e ON c.SupportRepId = e.EmployeeId

WHERE c.Country ='USA' AND e.LastName ='Peacock' AND e.FirstName ='Jane';