SELECT
    op.order_id,
    op.product_id,
    op.add_to_cart_order,
    op.reordered,
    p.product_name,
    p.aisle_id,
    p.department_id,
    a.aisle,
    d.department,
    o.user_id,
    o.eval_set,
    o.order_number,
    o.order_dow,
    o.order_hour_of_day,
    o.days_since_prior_order
FROM
    `instacart-441209.instacart.order_products_train` AS op
JOIN
    `instacart-441209.instacart.products` AS p
    ON op.product_id = p.product_id
JOIN
    `instacart-441209.instacart.aisles` AS a
    ON p.aisle_id = a.aisle_id
JOIN
    `instacart-441209.instacart.departments` AS d
    ON p.department_id = d.department_id
JOIN
    `instacart-441209.instacart.orders` AS o
    ON op.order_id = o.order_id
LEFT JOIN
    `instacart-441209.instacart.order_products_prior` AS op_prior
    ON op_prior.order_id = op.order_id AND op_prior.product_id = op.product_id