drop table if exists mart.f_customer_retention;

create table if not exists mart.f_customer_retention (
	id serial,
	new_customers_count int default 0, -- кол-во новых клиентов
	returning_customers_count int default 0, -- кол-во вернувшихся клиентов
	refunded_customer_count int default 0, -- кол-во клиентов, оформивших возврат
	period_name varchar(10) default 'weekly', -- название периода
	period_id varchar(10), -- идентификатор периода (номер недели или номер месяца).
	item_id int, -- идентификатор категории товара.
	new_customers_revenue numeric(10,2) default 0, -- доход с новых клиентов.
	returning_customers_revenue numeric(10,2) default 0, -- доход с вернувшихся клиентов.
	customers_refunded int default 0, -- количество возвратов клиентов
	constraint f_cust_ret_pkey primary key (id),
	constraint d_item_fkey foreign key (item_id) references mart.d_item (item_id) on delete no action on update cascade
);