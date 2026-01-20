SELECT
  UPPER(LastName) AS LastNameUpper,
  FirstName
FROM Customer
WHERE LENGTH(FirstName) > 5
  AND LENGTH(LastName)  > 5
ORDER BY LastName ASC;
