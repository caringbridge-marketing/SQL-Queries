select count(fr.replyid), ds.mtdCategory, dr.source from fct_reply fr
join dim_date dd on fr.datekey = dd.rowdatekey
join dim_reply dr on fr.replykey = dr.rowreplykey
join dim_site ds on fr.siteId = ds.siteId
where dd.year = 2017 and dd.weeknumbereos = 20 and ds.mtdCategory in ('Mobile','Desktop','Tablet')
group by ds.mtdCategory, dr.source