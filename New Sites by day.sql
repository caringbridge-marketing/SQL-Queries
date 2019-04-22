select count(ds.sitename), ds.mtdcategory from fct_site fs
join dim_site ds on fs.rowsitekey = ds.rowsitekey
join dim_date dd on fs.datekey = dd.rowdatekey
where dd.year = 2016 and dd.month = 1 and dd.day = 1
group by ds.mtdcategory
