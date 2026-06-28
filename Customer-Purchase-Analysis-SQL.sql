select * from customer_profile_dataset2_1;
select * from products_dataset2_2;
select * from purchase_history_dataset2_3;

select first_name,last_name,email,product_name,category
from customer_profile_dataset2_1 as custPdata
inner join purchase_history_dataset2_3 as PurHisData
on custPdata.customer_id = PurHisData.customer_id
inner join products_dataset2_2 as ProdctData
on ProdctData.product_id = PurHisData.product_id
where category = "Dairy";

select avg(price_per_unit) as Average_price
from products_dataset2_2 join purchase_history_dataset2_3
using (product_id)
join customer_profile_dataset2_1
using (customer_id)
where gender = "Female";

select phone_number,quantity
from customer_profile_dataset2_1 join purchase_history_dataset2_3
using (customer_id)
where quantity >= 3;

select sum(total_amount)
from purchase_history_dataset2_3 join products_dataset2_2
using (product_id)
where product_name = "Butter";

select first_name,last_name,phone_number,email,category
from customer_profile_dataset2_1 join purchase_history_dataset2_3
using (customer_id)
inner join products_dataset2_2
using (product_id)
where category = "Meats";

select round(sum(total_amount),0)
from purchase_history_dataset2_3
where purchase_date like "%2018%";

select year(purchase_date) as `Year`,sum(total_amount),state
from purchase_history_dataset2_3 join customer_profile_dataset2_1
using (customer_id) 
where state = "AZ"
group by `Year`
order by sum(total_amount) desc;

select round(sum(total_amount),0),state
from purchase_history_dataset2_3 join customer_profile_dataset2_1
using(customer_id)
group by state
order by sum(total_amount) desc
limit 5;

select sum(total_amount),brand,gender
from purchase_history_dataset2_3 join products_dataset2_2
using (product_id) inner join customer_profile_dataset2_1
using (customer_id)
where gender = "Female"
group by brand
order by sum(total_amount) desc;

select first_name,last_name,product_name,quantity
from customer_profile_dataset2_1 join purchase_history_dataset2_3
using (customer_id) inner join products_dataset2_2
using (product_id)
where category = "Grains";

