select dd.year, dd.month, dd.day, dd.datewhen, ds.mtdCategory, ds.oneWk1jrnl, count(distinct(fs.rowsitekey)) as "NumSites" from fct_site fs
join dim_site ds on fs.rowsitekey = ds.rowsitekey
join dim_date dd on fs.datekey = dd.rowdatekey
where dd.year in (2015,2016,2017)
group by dd.year, dd.month, dd.day, dd.datewhen, ds.mtdCategory, ds.oneWk1jrnl
order by dd.datewhen asc
