Use Trakomatic
Go
select Date,sum(Val) total
from
(
    select Date,Val
    from table1
    union all
    select Date,Val
    from table2
	union all
	Select Date,Val
	from table3
) t
group by Date