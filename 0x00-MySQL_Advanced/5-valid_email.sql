-- Write a SQL script that creates a trigger
-- it resets the attribute valid_email
-- only when the email has been changed.

DELIMITER //

CREATE TRIGGER rest_email BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    -- Check if email has been changed
    IF OLD.email <> NEW.email THEN
    -- Reset valid_email attribute
    SET NEW.valid_email = 0;
    END IF;
END //

DELIMITER ;