SELECT count(DISTINCT fj.siteid) AS numusers
	, ds.mtdcategory AS device
FROM fct_journal AS fj 
JOIN dim_date AS dd ON dd.rowdatekey = fj.datekey
JOIN dim_site AS ds ON ds.siteid = fj.siteid
WHERE dd.year = 2017
AND dd.month = 1
GROUP BY ds.mtdcategory
ORDER BY ds.mtdcategory ASC, numusers
