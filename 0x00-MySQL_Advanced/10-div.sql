-- Write a SQL script that creates a function
-- SafeDiv that divides (and returns)
-- the first by the second number
-- or returns 0
-- if the second number is equal to 0.

DELIMITER //

CREATE FUNCTION SafeDiv(a INT, b INT) RETURNS FLOAT
BEGIN
    DECLARE result INT;
    
    -- Check if the denominator is zero
    IF b = 0 THEN
        SET result = 0;
    ELSE
        -- Perform division
        SET result = a / b; -- Use DIV for integer division
    END IF;
    
    -- Return the result
    RETURN result;
END //

DELIMITER ;
