SELECT
    customer_id,
    first_name,
    last_name,
    phone,
    email,
    city,
    state
FROM
    customers AS c
WHERE
    NOT EXISTS (
        SELECT
            1
        FROM
            orders AS o
        WHERE
            o.customer_id = c.customer_id
    );