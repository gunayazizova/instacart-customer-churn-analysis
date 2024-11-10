SELECT * FROM `key-cistern-441220-e2.instacart.order_products__prior` LIMIT 1000;


SELECT
    od.order_id,
    od.user_id,
    od.eval_set,
    od.order_number,
    od.order_dow,
    od.order_hour_of_day,
    od.days_since_prior_order,
    opp.product_id,
    opp.add_to_cart_order AS opp_add_to_cart_order,
    opp.reordered AS opp_reordered,
    p.product_name,
    a.aisle,
    d.department
FROM
    `key-cistern-441220-e2.instacart.orders` AS od
JOIN
    `key-cistern-441220-e2.instacart.order_products__prior` AS opp
    ON od.order_id = opp.order_id
JOIN
    `key-cistern-441220-e2.instacart.products` AS p
    ON opp.product_id = p.product_id
JOIN
    `key-cistern-441220-e2.instacart.aisles` AS a
    ON p.aisle_id = a.aisle_id
JOIN
    `key-cistern-441220-e2.instacart.departments` AS d
    ON p.department_id = d.department_id;

