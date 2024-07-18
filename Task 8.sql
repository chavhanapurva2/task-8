select * from sales

	--10 query ques using regex

1) From shipmode, we have to find Second class 
select ship_mode,order_id from sales where ship_mode ~ 'Second Class'

2) select customer_id from sales where customer_id ~* '^[a-z][a-n]-[0-9](2|3|4)[0-9](5|8|7)[0-9]$'

3) select order_id,quantity from sales where quantity::varchar ~ '^(2|5|7|8)$'

4) select order_line, order_id,ship_date from sales 
	where ship_date::varchar ~* '^[0-9]{4}-[1](0|1|2|3|)-[0-9]{2}$'

5) select order_id,order_date from sales 
	where order_id::varchar ~* '^[C][A]-[0-9]{4}-[0-9](5|6|2)[0-9]{4}$'

select * from customer

6)select customer_name,segment from customer 
	where segment ::varchar ~* '^[C][a-z](r|n|)[a-z]{6}$'

7)select customer_id,customer_name,age from customer where age::varchar ~* '^(2|5)(0|1|5)$'

8)select customer_id,region from customer where region::varchar ~* '^[a-z](e|a|o)[a-z]{2}$'

9)select customer_name,country from customer where country ~* 'United'

10)select customer_id, customer_name,segment,city from customer 
	where city::varchar ~*'^(E|D)[a-z]{4}$'
