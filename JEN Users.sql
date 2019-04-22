select du.isJen, count(*) 
from cb.dim_user du
	join cb.fct_user fu on fu.userId = du.rowUserKey
	join cb.dim_date dd on fu.dateKey = dd.rowDateKey
where dd.year = 2016 and dd.weekNumberEos = 41
group by du.isJen
