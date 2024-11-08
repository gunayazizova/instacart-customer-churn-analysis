SET GLOBAL net_read_timeout = 600;
SET GLOBAL net_write_timeout = 600;
SET GLOBAL wait_timeout = 28800;
SET GLOBAL interactive_timeout = 28800;
SET GLOBAL max_allowed_packet = 67108864;

USE instacart;
SELECT order_id FROM order_products_prior;
USE instacart;
SELECT  count(*) FROM orders;




SELECT SUM(cnt) AS total_count
FROM (
    SELECT count(*) AS cnt FROM order_products_prior WHERE order_id BETWEEN 1 AND 10000000
    UNION ALL
    SELECT count(*) AS cnt FROM order_products_prior WHERE order_id BETWEEN 10000001 AND 20000000
    UNION ALL
    SELECT count(*) AS cnt FROM order_products_prior WHERE order_id BETWEEN 20000001 AND 3000000
    UNION ALL
    SELECT count(*) AS cnt FROM order_products_prior WHERE order_id BETWEEN 30000001 AND 40000000
    -- Continue in increments to keep the ranges smaller
) AS counts;

SET GLOBAL net_read_timeout = 600;
SET GLOBAL net_write_timeout = 600;
SET GLOBAL wait_timeout = 28800;
SET GLOBAL interactive_timeout = 28800;

SELECT count(*) AS cnt FROM order_products_prior WHERE order_id BETWEEN 1 AND 1000000;


SELECT count(*) AS cnt FROM order_products_prior WHERE order_id BETWEEN 1 AND 1000000;
SELECT count(*) AS cnt FROM order_products_prior WHERE order_id BETWEEN 1000001 AND 2000000;
SELECT count(*) AS cnt FROM order_products_prior WHERE order_id BETWEEN 2000001 AND 3000000;
SELECT count(*) AS cnt FROM order_products_prior WHERE order_id BETWEEN 3000001 AND 4000000;
SELECT count(*) AS cnt FROM order_products_prior WHERE order_id BETWEEN 4000001 AND 5000000;
SELECT count(*) AS cnt FROM order_products_prior WHERE order_id BETWEEN 5000001 AND 6000000;
SELECT count(*) AS cnt FROM order_products_prior WHERE order_id BETWEEN 6000001 AND 7000000;




CREATE INDEX idx_order_id ON order_products_prior(order_id);


OPTIMIZE TABLE order_products_prior;
SHOW ENGINE INNODB STATUS;


SELECT SUM(cnt) AS total_count
FROM (
    SELECT count(*) AS cnt FROM order_products_prior WHERE order_id BETWEEN 1 AND 1000000
    UNION ALL
    SELECT count(*) AS cnt FROM order_products_prior WHERE order_id BETWEEN 1000001 AND 2000000
    UNION ALL
    SELECT count(*) AS cnt FROM order_products_prior WHERE order_id BETWEEN 2000001 AND 3000000
) AS counts;

