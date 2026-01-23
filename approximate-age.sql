SELECT
  FirstName,
  LastName,
  CAST(strftime('%Y', HireDate) AS INTEGER) - CAST(strftime('%Y', BirthDate) AS INTEGER) AS ApproximateAge
FROM employees
ORDER BY ApproximateAge ASC;
