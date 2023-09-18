CREATE OR REPLACE PROCEDURE UpdateOrderStatus(
    p_orderID IN VARCHAR,
    p_newStatus IN VARCHAR
) AS
    no_meningful_change EXCEPTION;
	no_order_found_exception EXCEPTION;
	v_oldStatus VARCHAR(30);
	
	FUNCTION OrderExists(p_orderID IN VARCHAR) RETURN BOOLEAN IS
        v_order_count NUMBER;
    BEGIN
        SELECT COUNT(*) INTO v_order_count
        FROM Orders
        WHERE orderID = p_orderID;

        RETURN v_order_count > 0;
    END;
    
BEGIN
    BEGIN
		IF NOT OrderExists(p_orderID) THEN
            RAISE no_order_found_exception;
        END IF;
	
        SELECT orderStatus INTO v_oldStatus
        FROM Orders
        WHERE orderID = p_orderID;
    EXCEPTION
        WHEN no_order_found_exception THEN
            DBMS_OUTPUT.PUT_LINE('No order found with the specified ID.');
            RETURN;
    END;

    -- Update order status
    UPDATE Orders
    SET orderStatus = p_newStatus
    WHERE orderID = p_orderID;

    -- Check if any rows affected
    IF SQL%ROWCOUNT = 0 THEN
		DBMS_OUTPUT.PUT_LINE('Update failed');
	-- if old status same with new status
    ELSIF v_oldStatus = p_newStatus THEN
		RAISE no_meningful_change;
	ELSE
        DBMS_OUTPUT.PUT_LINE('Order status updated successfully.');
    END IF;

EXCEPTION
    WHEN no_meningful_change THEN
        DBMS_OUTPUT.PUT_LINE('No meaningful change occurred. [ old status : '|| v_oldStatus || ' -> new status : ' || p_newStatus || ' ] ');

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error updating order status.');
        
END;
/