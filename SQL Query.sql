--creating dataset to be exported

SELECT
o.order_id,
CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
c.city,
c.state,
o.order_date,
p.product_name,
ca.category_name,
s.store_name,
b.brand_name,
CONCAT(st.first_name, ' ', st.last_name) AS rep_name,
SUM(oi.quantity) AS total_units,
SUM(oi.quantity * oi.list_price) AS revenue

FROM sales.orders o

JOIN sales.customers c ON o.customer_id  = c.customer_id
JOIN sales.order_items oi ON o.order_id     = oi.order_id
JOIN production.products p ON oi.product_id  = p.product_id
JOIN production.categories ca ON p.category_id = ca.category_id
JOIN sales.stores s ON o.store_id = s.store_id
JOIN sales.staffs st ON o.staff_id = st.staff_id
JOIN production.brands b ON b.brand_id = p.brand_id

GROUP BY
o.order_id ,
c.first_name,
c.last_name,
c.city,
c.state,
o.order_date,
p.product_name,
ca.category_name,
s.store_name,
st.first_name,
st.last_name,
b.brand_name


