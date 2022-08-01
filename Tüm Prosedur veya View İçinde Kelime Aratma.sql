--Prosedürlerin içini arama
SELECT o.name,o.create_date,o.modify_date
FROM sys.sql_modules sm
INNER JOIN sys.objects o ON o.object_id = sm.object_id
WHERE o.type = 'P' AND sm.definition LIKE '%TEST%'
ORDER BY o.name



--View içini arama
SELECT o.name, o.create_date, o.modify_date
FROM sys.objects o
WHERE o.type IN ('V') AND 
OBJECT_DEFINITION(object_id) LIKE '%TEST%'
ORDER BY o.name