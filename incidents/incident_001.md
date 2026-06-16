# Incident 001 - Customer Unable to View Orders

## Issue

Customer reported that orders were not visible in the application.

---

## Investigation

1. Verified customer record exists in database.
2. Verified order records exist in Orders table.
3. Checked API response.
4. Reviewed application logs.

---

## SQL Used

SELECT *
FROM Customers
WHERE CustomerID = 101;

SELECT *
FROM Orders
WHERE CustomerID = 101;

---

## Root Cause

Customer record was valid but order mapping was incorrect.

---

## Resolution

Updated CustomerID mapping and validated order visibility.

---

## Outcome

Customer successfully viewed orders after correction.
