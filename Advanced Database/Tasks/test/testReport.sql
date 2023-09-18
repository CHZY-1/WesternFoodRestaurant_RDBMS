
-- specific order date

EXEC ItemPopularityReport(TO_DATE('06/12/2023', 'MM/DD/YYYY'), TO_DATE('06/19/2023', 'MM/DD/YYYY'));

-- Top n customer based on total sending

EXEC TopCustomersReport(5);