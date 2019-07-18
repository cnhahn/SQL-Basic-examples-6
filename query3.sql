/*query3 use businesses and individuals and payment. need things from daye March 1, 2017. Return the name and address of the taxpayer who made payment, date it payed on and paied amount. */

SELECT b.name, b.address, i.name, i.address, p.datePaid, p.amountPaid
FROM Businesses b FULL OUTER JOIN Individuals i ON b.taxpayerID = i.taxpayerID, Payments p
WHERE p.datePaid >= '03/01/2017' AND (p.taxpayerID = b.taxpayerID OR i.taxpayerID = p.taxpayerID);
