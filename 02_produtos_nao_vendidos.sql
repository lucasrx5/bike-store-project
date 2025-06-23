SELECT
    p.product_id,
    p.product_name,
    p.brand_id,
    p.model_year,
    p.list_price
FROM
    products AS p
WHERE
    NOT EXISTS (
        SELECT 1
        FROM order_items AS oi
        WHERE oi.product_id = p.product_id
    );
ORDER BY
    p.product_id ASC;