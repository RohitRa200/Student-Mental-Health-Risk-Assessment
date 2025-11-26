

select Age, count(*)  from dbo.[Depression+Student+Dataset]
Group by Age
order by Age desc



alter table [dbo].[Depression+Student+Dataset]
add age_group varchar(Max)

select * from dbo.[Depression+Student+Dataset]

update dbo.[Depression+Student+Dataset]
set age_group =
case when Age between 18 and 24 then 'A1'
else case when age between 25 and 30 then 'A2'
else 'A3' end end 