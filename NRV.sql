select count(fu.userId) from fct_user fu
join dim_date dd on fu.datekey = dd.rowdatekey
where dd.year = 2016 and dd.weeknumbereos = 41