Use Trakomatic
Go
declare @fivemins int, @thirty int, @onehour int
set @fivemins = 5
set @thirty = 30
set @onehour = 60

--query for 5 mins 
select dateadd(minute, (datediff(minute, 0, DateTime) / @fivemins) * @fivemins, 0) as "DateTime", count(*) as "Val"
from Test_Table1
group by dateadd(minute, (datediff(minute, 0, DateTime) / @fivemins) * @fivemins, 0) 


--query for 30 mins 
select dateadd(minute, (datediff(minute, 0, DateTime) / @thirty) * @thirty, 0) as "DateTime", count(*) as "Val"
from Test_Table1
group by dateadd(minute, (datediff(minute, 0, DateTime) / @thirty) * @thirty, 0) 


--query for 1 hour
select dateadd(minute, (datediff(minute, 0, DateTime) / @onehour) * @onehour, 0) as "DateTime", count(*) as "Val"
from Test_Table1
group by dateadd(minute, (datediff(minute, 0, DateTime) / @onehour) * @onehour, 0) 