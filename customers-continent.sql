SELECT 
    FirstName, 
    LastName, 
    Country,
    CASE
        WHEN Country IN ('USA', 'Canada', 'Brazil', 'Argentina', 'Chile') THEN 'America'
        WHEN Country IN ('France', 'Germany', 'United Kingdom', 'Spain', 'Italy', 'Portugal', 'Belgium', 'Netherlands', 'Norway', 'Sweden', 'Finland', 'Denmark', 'Poland', 'Czech Republic', 'Austria', 'Hungary', 'Ireland') THEN 'Europe'
        WHEN Country IN ('India', 'Japan', 'China', 'South Korea') THEN 'Asia'
        WHEN Country IN ('Australia', 'New Zealand') THEN 'Oceania'
        ELSE 'Unknown'
    END AS Continent
FROM customers;
