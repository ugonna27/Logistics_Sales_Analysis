Select * from dbo.['BI Assessment Data Set']

Select 
count(State)
from dbo.['BI Assessment Data Set']
Group By State
Order by State

Select
State
from dbo.['BI Assessment Data Set']
Group By State
Order By State asc

Select --Top 10
Category, [Sub-Category], city, [Order Date], Round (SUM(Sales), 2) as SalesTotal

from dbo.['BI Assessment Data Set']
Where [Order Date] between '2017-01-01' and '2017-03-31'

Group By Category, [Sub-Category], City, [Order Date]
Order By SalesTotal desc

Select 
City, SUM(Sales) as SalesTotal

from dbo.['BI Assessment Data Set']
Group By City
Order By SalesTotal desc

Select
City,
[Order Date],
DATEPAP
From dbo.['BI Assessment Data Set']

--Profitability By City
Select
Category,
[Sub-Category],
City,
Sales,
Profit
--Convert (date, [Ship Date]) as [Ship Date]
From dbo.['BI Assessment Data Set']

--find out sales during the second quarter of each year and how they compare to each other
Select
Category,
[Sub-Category],
Profit,
Convert (date, [Ship Date]) as [Ship Date]
From dbo.['BI Assessment Data Set']

--Top 10 Customers by City and Segment
Select Top 10
[Customer Name], SUM(Sales), City, Segment
From dbo.['BI Assessment Data Set']
Group By Sales,
[Customer Name],
City,
Segment
Order By Sales desc

--What is our largest customer segment?
Select
Segment, Round(SUM(Sales),2)
From dbo.['BI Assessment Data Set']
Group By Segment
Order By SUM(Sales) desc

--Segment with the most customers
Select
[Customer ID], Segment, SUM(Sales)
From dbo.['BI Assessment Data Set']
Group By Segment, [Customer ID], Sales

Select
Segment, COUNT([Customer ID])
From dbo.['BI Assessment Data Set']op
Group By Segment, [Customer ID]

--To find the segment with the largest number of customers.
Select 
COUNT(distinct [Customer ID])
From dbo.['BI Assessment Data Set']
Where Segment = 'Consumer'

union all

Select 
COUNT(distinct [Customer ID])
From dbo.['BI Assessment Data Set']
Where Segment = 'Home Office'

union all

Select 
COUNT(distinct [Customer ID])
From dbo.['BI Assessment Data Set']
Where Segment = 'Corporate'

--

Select
[Customer ID], Segment
From dbo.['BI Assessment Data Set']
Group By [Customer ID], Segment
Order By [Customer ID]

Select 
count (distinct [Customer ID]), Segment
From dbo.['BI Assessment Data Set']
Group By Segment, [Customer ID]

--Calculate profit margin for each product: That will be net income/Revenue * 100 NOTE: No Cost column to use to determine fields for this question.

--What customers have you lost in this quarter compared to last year?

Select
count ([Customer Name])
From dbo.['BI Assessment Data Set']
Where [Ship Date] between '2014-03-01' and '2014-12-31'

Select
count ([Customer Name])
From dbo.['BI Assessment Data Set']
Where [Ship Date] between '2015-01-01' and '2015-12-31'

Select
count ([Customer Name])
From dbo.['BI Assessment Data Set']
Where [Ship Date] between '2016-01-01' and '2016-12-31'

Select
count ( distinct [Customer Name])
From dbo.['BI Assessment Data Set']
Where [Ship Date] between '2017-01-01' and '2017-12-31'

--Find the percentage of returning customers to overall customers for 2017 above

Select
distinct [Customer Name]
From dbo.['BI Assessment Data Set']
Where [Ship Date] between '2018-01-01' and '2018-12-31'

Select 
COUNT(distinct [Customer ID])
From dbo.['BI Assessment Data Set']

Select
distinct [Customer ID],
[State],
Sales,
Segment,
convert (date, [Order Date]) as [Order Date]
From dbo.['BI Assessment Data Set']

--To find top underperforming vs top performing products:
Select
SUM (Quantity) as SumQuantity,
[Sub-Category],
Category
From dbo.['BI Assessment Data Set']
Group By Quantity, [Sub-Category], Category
Order By SumQuantity desc

--Any relationship between Sales (Quantity) and Ship Mode?
Select
SUM (Quantity),
[Sub-Category],
[Ship Mode]
From dbo.['BI Assessment Data Set']

--Find total of Sales
Select
SUM(Sales)
From dbo.['BI Assessment Data Set']