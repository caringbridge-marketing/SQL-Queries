select ds.siteName, count(fj.journalId) as "NumJournals"  from dim_site ds, fct_site fs, fct_journal fj, 
dim_date dd  where dd.year = 2019 and dd.weeknumbereos = 9 AND ds.siteId = fj.siteId AND fs.rowSiteKey = ds.rowSiteKey
 AND fs.datekey = dd.rowdatekey AND (ds.mtdCategory IN ("Desktop", "Mobile", "Tablet")) group by ds.siteName Having count(fj.journalId)>1;
