-- Assuming a table named 'numbers' with a column 'value'

CREATE PROCEDURE bubbleSort()
BEGIN
    DECLARE n INT;
    DECLARE i INT;
    DECLARE j INT;
    DECLARE temp INT;
    DECLARE swapped BOOLEAN;

    SET n = (SELECT COUNT(*) FROM numbers);
    SET swapped = true;
    SET i = 0;

    WHILE (i < n - 1 AND swapped) DO
        SET swapped = false;
        SET j = 0;
        WHILE (j < n - i - 1) DO
            IF (SELECT value FROM numbers WHERE id = j + 1) > (SELECT value FROM numbers WHERE id = j) THEN
                SET temp = (SELECT value FROM numbers WHERE id = j);
                UPDATE numbers SET value = (SELECT value FROM numbers WHERE id = j + 1) WHERE id = j;
                UPDATE numbers SET value = temp WHERE id = j + 1;
                SET swapped = true;
            END IF;
            SET j = j + 1;
        END WHILE;
        SET i = i + 1;
    END WHILE;

    SELECT * FROM numbers;
END;
