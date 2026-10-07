USE hw3;

DROP FUNCTION IF EXISTS divide_numbers;

DELIMITER //

CREATE FUNCTION divide_numbers(a FLOAT, b FLOAT)
RETURNS FLOAT
DETERMINISTIC
NO SQL
BEGIN
    RETURN a / b;
END //

DELIMITER ;

SELECT id, order_id, quantity,
       divide_numbers(quantity, 2) AS quantity_divided
FROM order_details;