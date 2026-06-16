# Incident 003 - Slow Application Performance

## Issue

Users reported application response times greater than 20 seconds.

---

## Investigation

1. Checked server CPU usage using top.
2. Checked running processes using ps -ef.
3. Reviewed application logs.
4. Checked database queries.

---

## Findings

One database query was performing a full table scan.

---

## Root Cause

Missing index on frequently searched column.

---

## Resolution

Database index created and query optimized.

---

## Outcome

Response time reduced from 20 seconds to under 2 seconds.
