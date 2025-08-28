use adidas_db
go

select sum(Total_Sales) "sum total sales"
from adiddass_uk

select sum(Operating_Profit) "sum profit"
from adiddass_uk

select sum(Units_Sold) "sum unit solds"
from adiddass_uk

select sum(Price_per_Unit) "sum price per unit"
from adiddass_uk


select Retailer , sum(Total_Sales) "sum total sales"
from adiddass_uk
group by Retailer
order by sum(Total_Sales)desc

select year , sum(Total_Sales) "total sales"
from adiddass_uk
group by year
order by sum(Total_Sales) desc


select State , sum(Total_Sales) "sum total sales"
from adiddass_uk
group by state
order by sum(Total_Sales)desc


select PRODUCT , sum(total_sales) "sum total sales"
from adiddass_uk
group by Product
order by sum(Total_Sales) desc

select Product , sum(Price_per_Unit) "sum price per unit"
from adiddass_uk
group by Product
order by sum(Price_per_Unit) desc

select MONTH(Invoice_Date) "months" , sum(Total_Sales) "sum total sales"
from adiddass_uk
group by MONTH(Invoice_Date)
order by sum(Total_Sales)desc