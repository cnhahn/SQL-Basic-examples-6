/*query1 different jobLevels appear for IRSagents*/

SELECT DISTINCT jobLevel
FROM IRSagents
WHERE active = true 
ORDER BY jobLevel DESC;
