/*query2 have TaxPayerID from Businesses table and has no TaxReturns */

SELECT taxPayerID
FROM Businesses
WHERE name LIKE 'TI%' AND taxPayerID NOT IN (SELECT taxPayerID
										 FROM TaxReturns);
