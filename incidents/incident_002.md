# Incident 002 - API Returning 500 Error

## Issue

Users received Internal Server Error while retrieving customer information.

---

## Investigation

1. Tested API in Postman.
2. Verified request payload.
3. Checked application logs.
4. Checked database connectivity.

---

## Findings

API was unable to connect to database.

---

## Root Cause

Database service was unavailable.

---

## Resolution

Database service restarted and connectivity verified.

---

## Outcome

API returned 200 OK after service restoration.
