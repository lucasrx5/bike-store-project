SELECT
    p.product_id,
    p.product_name,
    p.brand_id,
    p.list_price,
    s.store_id,
    s.quantity
FROM
    products AS p
INNER JOIN
    stocks AS s ON p.product_id = s.product_id
WHERE
    s.quantity = 0 OR s.quantity IS NULL
ORDER BY
    s.store_id, p.product_name;