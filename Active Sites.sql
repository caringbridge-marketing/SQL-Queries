select count(distinct fj.siteid) as numsites from fct_journal fj
join dim_date dd on fj.datekey = dd.rowdatekey
join dim_site ds on fj.siteid = ds.siteid
where dd.year = 2016 and dd.weeknumbereos = 23
