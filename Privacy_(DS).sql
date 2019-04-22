select security, dd.year, dd.month, count(security) 
from fct_site fs, dim_site ds, dim_date dd 
where fs.rowSiteKey = ds.rowSiteKey AND fs.dateKey = dd.rowDateKey AND dd.year in (2018, 2019) /*AND dd.month = 1 */
AND ds.mtdCategory IN ('Desktop', 'Mobile', 'Tablet') AND ds.isDeactivated = "No" 
group by ds.security, dd.year, dd.month
order by dd.year, dd.month, ds.security