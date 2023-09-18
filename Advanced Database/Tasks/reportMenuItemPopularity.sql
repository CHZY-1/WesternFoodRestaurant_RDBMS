SET LINESIZE 200
set serveroutput on format WRAPPED

CREATE OR REPLACE PROCEDURE ItemPopularityReport(
    p_start_date DATE,
    p_end_date DATE
) AS
    CURSOR c_menu_items IS
        SELECT
            I.itemsID,
            I.itemName,
            SUM(OI.orderQuantity) AS total_quantity_sold
        FROM
            OrderItems OI
            JOIN Items I ON OI.itemsID = I.itemsID
            JOIN Orders O ON OI.orderID = O.orderID
        WHERE
            O.orderDate BETWEEN p_start_date AND p_end_date
        GROUP BY
            I.itemsID, I.itemName
		ORDER BY
            total_quantity_sold DESC;
			
		v_row_number NUMBER := 0;

BEGIN
	DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('--------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('        Top Menu Items by Sales Report       ');
    DBMS_OUTPUT.PUT_LINE('--------------------------------------------------');
	DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('Date Range: ' || TO_CHAR(p_start_date, 'DD-MON-YYYY') || ' to ' || TO_CHAR(p_end_date, 'DD-MON-YYYY'));
    DBMS_OUTPUT.PUT_LINE(' ');

    DBMS_OUTPUT.PUT_LINE('Item #   Item ID           Item Name                                Total Quantity Sold');
    DBMS_OUTPUT.PUT_LINE('-------  ----------------  ---------------------------------------  -------------------');
	

    FOR menu_item IN c_menu_items LOOP
        v_row_number := v_row_number + 1;
		
		IF MOD(v_row_number, 10) = 1 AND v_row_number > 1 THEN
            DBMS_OUTPUT.PUT_LINE(' ');
        END IF;
		
        DBMS_OUTPUT.PUT_LINE(
            RPAD(v_row_number, 9) ||
            RPAD(menu_item.itemsID, 18) ||
            RPAD(SUBSTR(menu_item.itemName, 1, 40), 40) ||
            TO_CHAR(menu_item.total_quantity_sold, '999')
        );
    END LOOP;

    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('End of Report');
    
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END ItemPopularityReport;
/
