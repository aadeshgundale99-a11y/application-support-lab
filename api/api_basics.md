# API Basics for Application Support

## What is an API?

API (Application Programming Interface) allows two applications to communicate with each other.

Example:

Customer Portal → API → Database

---

## Common HTTP Methods

### GET

Used to retrieve data.

Example:

GET /customers/101

Response:

{
  "customerId": 101,
  "customerName": "Rahul Sharma"
}

---

### POST

Used to create new data.

Example:

POST /customers

Request Body:

{
  "customerName": "Rahul Sharma",
  "country": "India"
}

---

### PUT

Used to update existing data.

Example:

PUT /customers/101

Request Body:

{
  "country": "Bharat"
}

---

### DELETE

Used to remove data.

Example:

DELETE /customers/101

---

## Common Status Codes

### 200 OK

Request successful.

---

### 201 Created

Record created successfully.

Typically returned after POST.

---

### 400 Bad Request

Invalid request from client.

Possible causes:

- Missing fields
- Invalid data

---

### 401 Unauthorized

Authentication required.

Possible causes:

- Missing token
- Invalid token

---

### 403 Forbidden

Access denied.

User authenticated but lacks permission.

---

### 404 Not Found

Resource does not exist.

Example:

GET /customers/9999

Customer not found.

---

### 500 Internal Server Error

Server-side failure.

Possible causes:

- Application crash
- Database issue
- Unexpected exception

---

## API Troubleshooting Checklist

### User Cannot See Customer Details

Checks:

1. Verify API URL
2. Verify Customer ID
3. Check API response code
4. Check application logs
5. Verify database record exists

---

### API Returning 500 Error

Checks:

1. Review application logs
2. Check database connectivity
3. Check recent deployments
4. Verify service status

---

### API Returning 401 Error

Checks:

1. Verify authentication token
2. Verify token expiry
3. Verify API permissions

---

## Useful curl Commands

### GET Request

curl https://api.example.com/customers/101

---

### POST Request

curl -X POST https://api.example.com/customers

---

### Check Response Headers

curl -I https://api.example.com
