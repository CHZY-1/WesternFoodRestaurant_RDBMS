SET LINESIZE 200
set serveroutput on format WRAPPED

CREATE OR REPLACE PROCEDURE TopCustomersReport(
    numCustomers IN NUMBER DEFAULT 10
) AS
    CURSOR c_top_customers IS
    SELECT *
    FROM (
        SELECT
            c.customerID,
            c.customerName,
            SUM(p.paymentAmount) AS totalSpending
        FROM
            Customers c
            JOIN Payments p ON c.customerID = p.customerID
        GROUP BY
            c.customerID, c.customerName
        ORDER BY
            totalSpending DESC
    ) WHERE ROWNUM <= numCustomers;

    v_row_count NUMBER := 0;

BEGIN
	DBMS_OUTPUT.PUT_LINE('');
    DBMS_OUTPUT.PUT_LINE('---------------------------------------');
    DBMS_OUTPUT.PUT_LINE('Top ' || numCustomers || ' Customers by Total Spending');
    DBMS_OUTPUT.PUT_LINE('---------------------------------------');
	
	DBMS_OUTPUT.PUT_LINE('');
	DBMS_OUTPUT.PUT_LINE('');
		
    DBMS_OUTPUT.PUT_LINE(
        RPAD('Rank', 5) ||
        RPAD('Customer ID', 15) ||
        RPAD('Customer Name', 35) ||
        LPAD('Total Spending', 16)
    );
	
	DBMS_OUTPUT.PUT_LINE(
        RPAD('-', 5, '-') ||
        RPAD('-', 15, '-') ||
        RPAD('-', 35, '-') ||
        RPAD('-', 16, '-')
    );

    FOR customer_rec IN c_top_customers LOOP
        v_row_count := v_row_count + 1;

        DBMS_OUTPUT.PUT_LINE(
            RPAD(v_row_count, 5) ||
            RPAD(customer_rec.customerID, 15) ||
            RPAD(SUBSTR(customer_rec.customerName, 1, 35), 35) ||
            LPAD('RM ' || TO_CHAR(customer_rec.totalSpending, '999,999.99'), 16)
        );
    END LOOP;
	DBMS_OUTPUT.PUT_LINE('');
    DBMS_OUTPUT.PUT_LINE('End of Report');

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END TopCustomersReport;
/