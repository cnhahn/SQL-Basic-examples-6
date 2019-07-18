/*query5 find each taxpayer made one or more payments. Give taxpayerID, # of payments, sum of those payments. 3 attributes in your results are called paying Taxpayer, howmanyPayments and sumPayments. Results only includes taxpayers who made at least one payment  */

SELECT p.taxpayerID AS payingTaxpayer, count(*) AS howmanyPayments, sum(p.amountPaid) AS sumPayments
FROM Payments p
GROUP BY taxpayerID 
HAVING count(*) >= 1;
