select count(*)
from

((select distinct userId
from fct_reply fr
    join dim_reply dr on fr.replyKey = dr.rowReplyKey
    join dim_date dd on fr.datekey = dd.rowDateKey
where 
    dr.source = "Journal"
    and dd.year = 2015)

UNION

(select distinct userId
from fct_guestbook fg
    join dim_date dd on fg.dateKey = dd.rowDateKey
where
    dd.year = 2015)
) jrnlCmtGb