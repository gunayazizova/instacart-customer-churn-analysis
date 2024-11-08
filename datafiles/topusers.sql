WITH CombinedOrderProducts AS (
    SELECT 
        op1.product_id AS product_id1,
        op1.product_id AS product_id2,
        COUNT(*) AS combination_count
FROM
    order_products_prior op1
JOIN
    order_products_prior op2 ON op1.order_id = op1.order_id AND op1.product_id < op2.product_id
GROUP BY
    op1.product_id,
    op2.product_id)
SELECT 
    p1.product_name AS product_name1,
	p2.product_name AS product_name2,
    pc.combination_count
FROM
    ProductCombination pc
    JOIN products p1 ON pc.product_id1 = p1.product_id
    JOIN products p2 ON pc.product_id1 = p2.product_id
ORDER BY 
   pc.combination_count DESC
LIMIT 5;   
    