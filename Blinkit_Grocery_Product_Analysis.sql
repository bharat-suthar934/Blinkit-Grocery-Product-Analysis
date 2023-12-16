show databases;
use test;
show tables;
drop table abc;
drop table sql_blinkit_project11 ;

select *from sql_blinkit_project sbp ;

#in sql blinkit project  30,49,51,query not show output



#2. Write an SQL query to show all Item_Identifier 

select item_identifier from sql_blinkit_project sbp ;

#3 Write an SQL query to show count of total Item_Identifier. 

select count(item_identifier) from sql_blinkit_project sbp ;

#4 Write an SQL query to show maximum Item Weight.
select max(item_weight) from sql_blinkit_project sbp ;

#5 Write an SQL query to show minimum Item Weight.
select min(item_weight) from sql_blinkit_project sbp ;

#6 Write an SQL query to show average Item_Weight. 
select avg(item_weight) from sql_blinkit_project sbp ;

#7 Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Low Fat.
select count(item_fat_content) from sql_blinkit_project sbp where Item_Fat_Content='Low Fat' ; 

#8 Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Regular.
select count(item_fat_content) from sql_blinkit_project sbp where Item_Fat_Content='Regular' ;

#9 Write an SQL query to show maximum Item_MRP 
select max(item_mrp) from sql_blinkit_project sbp ;

#10. Write an SQL query to show minimum Item_MRP
select min(Item_MRP) from sql_blinkit_project sbp2 ;

#11 Write an SQL query to show Item_Identifier , Item_Fat_Content,Item_Type, Item_MRP whose Item_MRP is greater than 200.
select item_identifier,item_fat_content,Item_Type,Item_MRP  from sql_blinkit_project sbp
	where Item_MRP >200 order by Item_MRP desc;
  
#12 Write an SQL query to show maximum Item_MRP WHERE Item_Fat_Content is Low Fat
select max(item_mrp) from sql_blinkit_project sbp where Item_Fat_Content ='Low Fat' ;

#13. Write an SQL query to show minimum Item_MRP whose Item_Fat_Content is Low Fat
select min(item_mrp) from sql_blinkit_project sbp where Item_Fat_Content ='Low Fat' ;

#14. Write an SQL query to show ALL DATA WHERE item MRP is BETWEEN 50 to 100
select *from sql_blinkit_project sbp where Item_MRP between 50 and 100;

#15. Write an SQL query to show ALL UNIQUE value of Item_Fat_Content
select distinct (item_fat_content)  from sql_blinkit_project sbp ; 

#16. Write an SQL query to show ALL UNIQUE value of Item_Type 
select distinct (item_type) from sql_blinkit_project sbp ;

#17. Write an SQL query to show ALL DATA in descending ORDER by Item MRP
select *from sql_blinkit_project sbp order by Item_MRP desc;

#18. Write an SQL query to show ALL DATA in ascending ORDER by Item_Outlet_Sales
select *from sql_blinkit_project sbp order by item_outlet_sales ;

#19. Write an SQL query to show ALL DATA in ascending by Item_Type
select *from sql_blinkit_project sbp order by Item_Type ;

#20. Write an SQL query to show DATA of item_type dairy & Meat 
select *from sql_blinkit_project sbp where Item_Type in ("dairy" , "meat");

#21. Write an SQL query to show ALL UNIQUE value of Outlet_Size 
select distinct(outlet_size) from sql_blinkit_project sbp ;

#22. Write an SQL query to show ALL UNIQUE value of Outlet_Location_Type
select distinct(outlet_location_type) from sql_blinkit_project sbp ;

#23. Write an SQL query to show ALL UNIQUE value of Outlet_Type 
select distinct (outlet_type) from sql_blinkit_project sbp ;

#24. Write an SQL query to show count of number of items by Item_Type and order it in descending order 
select Item_Type ,count(item_type) as total 
	from sql_blinkit_project sbp 
		group by Item_Type  order by count(item_type) desc  ; 

#25. Write an SQL query to show count of number of items by Outlet_Size and ordered it in ascending order
select outlet_size,count(outlet_size) as total 
	from sql_blinkit_project sbp 
		group by Outlet_Size order by count(Outlet_Size) ;

#26. Write an SQL query to show count of number of items by Outlet_Type and ordered it in descending order. 
select Outlet_Type ,count(outlet_type) as total 
	from sql_blinkit_project sbp 
		group by Outlet_Type  order by count(Outlet_Type) desc;
	
#27. Write an SQL query to show count of items by Outlet_Location_Type and order it indescending order 
	select outlet_location_type,count(outlet_location_type) 
		from sql_blinkit_project sbp2 
			group by Outlet_Location_Type order by Outlet_Location_Type desc;
		

#28. Write an SQL query to show maximum MRP by Item_Type 
select Item_Type,Item_MRP  from sql_blinkit_project sbp 
	where (Item_MRP,Item_Type) in 
		(select max(Item_MRP),Item_Type from sql_blinkit_project sbp2
			group by Item_Type);
	
#29. Write an SQL query to show minimum MRP by Item_Type 

select item_mrp,item_type from sql_blinkit_project sbp 
	where (Item_Type,Item_MRP) in 
		(select min(Item_MRP),Item_Type from sql_blinkit_project sbp1
			group by Item_Type) ;
		
select *from sql_blinkit_project sbp order by Item_MRP desc;
use test;
show tables;
select *from sql_blinkit_project sbp ;

#30. Write an SQL query to show minimum MRP by Outlet_Establishment_Year and order it in descending order.

select distinct min(item_mrp),Item_Type ,outlet_establishment_year from sql_blinkit_project sbp 
	group by Outlet_Establishment_Year order by min(Item_MRP) desc ;


select Outlet_Establishment_Year,Item_MRP ,Item_Type  from sql_blinkit_project sbp where Item_MRP =
	(select min(Item_MRP) from sql_blinkit_project sbp2) group by Outlet_Establishment_Year ;

select Outlet_Establishment_Year ,min(Item_MRP)
from sql_blinkit_project sbp group by Outlet_Establishment_Year having min(Item_MRP); 

select *from sql_blinkit_project sbp ;

#30,49,51

#31. Write an SQL query to show maximum MRP by Outlet_Establishment_Year and order it in descending order.
select distinct max(item_mrp),item_type,outlet_establishment_year from sql_blinkit_project sbp 
	group by Outlet_Establishment_Year order by max(Item_MRP) desc; 

#32. Write an SQL query to show average MRP by Outlet_Size and order it in descending order 

select avg(item_mrp),outlet_size from sql_blinkit_project sbp 
	group by Outlet_Size order by avg(Item_MRP) desc;

#33Write an SQL query to Average MRP by Outlet_Type and ordered in ascending order. 
select avg(item_mrp),outlet_type from sql_blinkit_project sbp 
	group by Outlet_Type order by avg(Item_MRP);

#34. Write an SQL query to show maximum MRP by Outlet_Type 
select max(item_mrp),outlet_type from sql_blinkit_project sbp 
	group by Outlet_Type ;

#35. Write an SQL query to show maximum Item_Weight by Item_Type
select max(item_weight) ,item_type from sql_blinkit_project sbp 
	group by Item_Type ;

#36. Write an SQL query to show maximum Item_Weight by Outlet_Establishment_Year

select max(item_weight),outlet_establishment_year from sql_blinkit_project sbp 
	group by Outlet_Establishment_Year ;

#37. Write an SQL query to show minimum Item_Weight by Outlet_Type

select min(item_weight),outlet_type from sql_blinkit_project sbp 
	group by Outlet_Type ;

#38. Write an SQL query to show average Item_Weight by Outlet_Location_Type and arrange it by descending order
select avg(item_weight),outlet_location_type from sql_blinkit_project sbp 
	group by Outlet_Location_Type order by Item_Weight desc;

#39. Write an SQL query to show maximum Item_Outlet_Sales by Item_Type
  select max(item_outlet_sales),item_type from sql_blinkit_project sbp 
	group by Item_Type ;

#40. Write an SQL query to show minimum Item_Outlet_Sales by Item_Type
select min(item_outlet_sales),item_type from sql_blinkit_project sbp 
	group by Item_Type ;


#41. Write an SQL query to show minimum Item_Outlet_Sales by Outlet_Establishment_Year
select min(item_outlet_sales),outlet_establishment_year from sql_blinkit_project sbp 
	group by Outlet_Establishment_Year ;

#42. Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Establishment_Year and order it by descending order 
select max(item_outlet_sales),outlet_establishment_year from sql_blinkit_project sbp 
	group by Outlet_Establishment_Year order by max(Item_Outlet_Sales) desc;


#43. Write an SQL query to show average Item_Outlet_Sales by Outlet_Size and order it it descending order
select avg(item_outlet_sales),outlet_size from sql_blinkit_project sbp 
	group by Outlet_Size order by Item_Outlet_Sales desc;

#44. Write an SQL query to show average Item_Outlet_Sales by Outlet_Type

	select avg(item_outlet_sales),outlet_type from sql_blinkit_project sbp group by Outlet_Type ;

#45. Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Type
	
	select max(item_outlet_sales),outlet_type from sql_blinkit_project sbp group by Outlet_Type ;

#46. Write an SQL query to show total Item_Outlet_Sales by Item_Type 
	
	select count(item_outlet_sales),Item_Type from sql_blinkit_project sbp group by Item_Type  ;

#47. Write an SQL query to show total Item_Outlet_Sales by Item_Fat_Content

	select count(item_outlet_sales),Item_Fat_Content  from sql_blinkit_project sbp group by Item_Fat_Content  ;

#48. Write an SQL query to show maximum Item_Visibility by Item_Type
	
	select item_visibility,item_type from sql_blinkit_project sbp 
		where Item_Visibility =(select max(Item_Visibility) from sql_blinkit_project sbp2) group by Item_Type ; 
	
	select item_type,item_visibility from sql_blinkit_project sbp group by Item_Type having max(Item_Visibility) ;


#49. Write an SQL query to show Minimum Item_Visibility by Item_Type
	
	select * from sql_blinkit_project sbp ;
	
	select item_visibility,item_type from sql_blinkit_project sbp 
		where Item_Visibility =(select min(Item_Visibility) from sql_blinkit_project sbp2) group by Item_Type ; 


#50. Write an SQL query to show total Item_Outlet_Sales by Item_Type but only WHERE Outlet_Location_Type is Tier 1

select count(item_outlet_sales),item_type,Outlet_Location_Type  from sql_blinkit_project sbp 
	where Outlet_Location_Type ='Tier 1' group by Item_Type ;


#51. Write an SQL query to show total Item_Outlet_Sales by Item_Type WHERE Item_Fat_Content is ONLY Low Fat & LF 

select item_fat_content,item_type,sum(item_outlet_sales) from sql_blinkit_project sbp 
   where Item_Fat_Content in ('Low Fat','LF')
   		group by Item_Fat_Content ,Item_Type ;

	select *from sql_blinkit_project sbp ;

