# Incident 1 - Customer Cannot See Order

Issue:
Customer reports that order #1003 is missing.

Investigation:
- Verified order exists in Orders table
- Checked payment status
- Confirmed customer mapping

SQL Used:
SELECT *
FROM Orders
WHERE OrderID = 1003;

Root Cause:
Incorrect CustomerID mapping.

Resolution:
Updated CustomerID reference and validated order visibility.
