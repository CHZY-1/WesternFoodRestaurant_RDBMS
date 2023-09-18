COLUMN customerName FORMAT A20
COLUMN "Average Feedback Rating" FORMAT 9.99
COLUMN "Total Feedback Count" FORMAT 9999

TTITLE LEFT 'Customer Feedback' SKIP 2
BTITLE LEFT 'Page: ' FORMAT 999 SQL.PNO
SET PAGESIZE 20

CREATE OR REPLACE VIEW CustomerFeedbackSummary AS
SELECT C.customerName, AVG(F.feedbackRating) AS "Average Feedback Rating",  COUNT(F.feedbackID) AS "Total Feedback Count"
FROM Customers C
LEFT JOIN Feedbacks F ON C.customerID = F.customerID
GROUP BY C.customerName
HAVING COUNT(F.feedbackID) > 0
ORDER BY "Average Feedback Rating" DESC;