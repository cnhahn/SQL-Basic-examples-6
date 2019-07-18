/*query4 individual, spouseID gives taxpayerID of individual's spouse; if NULL person dosent have spouse. individual taper who spouse is also an individual taxpayer, result name of both taxpayer and tapayer's spouse. Results frist attribute should be called taxpayerName second attr spouseName. */

SELECT i1.name AS taxpayerName, i2.name AS spouseName
FROM Individuals i1, Individuals i2
WHERE i1.spouseID = i2.taxpayerID;
