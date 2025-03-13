delete from mart.f_customer_retention fcr
using mart.d_calendar dc
where fcr.period_id = substr(dc.week_of_year_iso, 1, 8)
and dc.date_actual::date = '{{ ds }}'::date;
with cte as (  -- группировка по всем возможным комбинациям покупателей и item_id
select
	substr(dc.week_of_year_iso, 1, 8) as period_id,
	uol.customer_id,
	uol.item_id,
	count(distinct uol.uniq_id) as orders_count,  -- кол-во заказов в каждой комбинации
	sum(case uol.status when 'refunded' then 1 else 0 end) as refunds_count,  -- кол-во возвратов в каждой комбинации
	sum(uol.payment_amount) as total_payment  -- сумма платежей в каждой комбинации
from staging.user_order_log uol
inner join mart.d_calendar dc on uol.date_time::date = dc.date_actual
where uol.date_time::date between
	date_trunc('week', current_date) - interval '1 week' and 
    date_trunc('week', current_date) - interval '1 second'
group by period_id, uol.customer_id, uol.item_id
),
cte2 as (  -- подготовка нужных метрик по разным категориям покупателей
select
	period_id,
	item_id,
	sum(case when orders_count = 1 then 1 else 0 end) as new_customers_count,
    sum(case when orders_count = 1 then total_payment else 0 end) as new_customers_revenue,
    sum(case when orders_count > 1 then 1 else 0 end) as returning_customers_count,
    sum(case when orders_count > 1 then total_payment else 0 end) as returning_customers_revenue,
    sum(case when refunds_count > 0 then 1 else 0 end) as refunded_customer_count,
    sum(case when refunds_count > 0 then refunds_count else 0 end) as customers_refunded
from cte
group by period_id, item_id
),
cte3 as (  -- сборка отчета по образу витрины
select
	cte2.new_customers_count as new_customers_count,
	cte2.returning_customers_count as returning_customers_count,
	cte2.refunded_customer_count as refunded_customer_count,
	'weekly' as period_name,
	cte2.period_id as period_id,
	cte2.item_id as item_id,
	cte2.new_customers_revenue as new_customers_revenue,
	cte2.returning_customers_revenue as returning_customers_revenue,
	cte2.customers_refunded as customers_refunded
from cte2
),
cte4 as (  -- загрузка отчета в витрину
insert into mart.f_customer_retention (
	new_customers_count,
	returning_customers_count,
	refunded_customer_count,
	period_name,
	period_id,
	item_id,
	new_customers_revenue,
	returning_customers_revenue,
	customers_refunded
)
select 
	cte3.new_customers_count,
	cte3.returning_customers_count,
	cte3.refunded_customer_count,
	cte3.period_name,
	cte3.period_id,
	cte3.item_id,
	cte3.new_customers_revenue,
	cte3.returning_customers_revenue,
	cte3.customers_refunded
from cte3
)
select 'Загрузка данных в витрину успешно завершена!';