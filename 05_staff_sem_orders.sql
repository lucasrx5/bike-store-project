SELECT
    s.staff_id,
    s.first_name,
    s.last_name,
    s.active,
    s.store_id
FROM
    staffs AS s
WHERE
    NOT EXISTS (
        SELECT 1
        FROM orders AS o
        WHERE o.staff_id = s.staff_id
    );