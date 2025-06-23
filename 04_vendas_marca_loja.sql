SELECT
    b.brand_name,
    s.store_name,
    SUM(oi.quantity) AS total_de_itens_vendidos
FROM
    order_items AS oi
INNER JOIN
    products AS p ON oi.product_id = p.product_id
INNER JOIN
    brands AS b ON p.brand_id = b.brand_id
INNER JOIN
    orders AS o ON oi.order_id = o.order_id
INNER JOIN
    stores AS s ON o.store_id = s.store_id
GROUP BY
    b.brand_name,
    s.store_name
ORDER BY
    s.store_name,
    b.brand_name;