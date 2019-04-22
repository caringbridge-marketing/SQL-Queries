select ds.siteName, count(fj.journalId) as "NumJournals"  from dim_site ds, fct_site fs, fct_journal fj, 
dim_date dd  where dd.year = 2018 and dd.month = 11 and dd.day = 7 AND ds.siteId = fj.siteId AND fs.rowSiteKey = ds.rowSiteKey
 AND fs.datekey = dd.rowdatekey AND (ds.mtdCategory IN ("Desktop", "Mobile", "Tablet")) group by ds.siteName Having count(fj.journalId)>1;
