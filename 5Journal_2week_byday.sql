select dd.year, dd.month, dd.day, dd.datewhen, ds.mtdCategory, ds. twoWks5jrnls, count(distinct(fs.rowsitekey)) as "NumSites" from fct_site fs
join dim_site ds on fs.rowsitekey = ds.rowsitekey
join dim_date dd on fs.datekey = dd.rowdatekey
where dd.year in (2016,2017)
group by dd.year, dd.month, dd.day, dd.datewhen, ds.mtdCategory, ds.twoWks5jrnls
order by dd.datewhen asc
