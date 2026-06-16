# Postman Examples for Application Support

## What is Postman?

Postman is a tool used to test APIs without needing a frontend application.

Application Support Engineers use Postman to:

- Verify API responses
- Test endpoints
- Troubleshoot issues
- Validate request payloads
- Check authentication

---

# GET Request Example

## Get Customer Details

Method:

GET

URL:

https://api.example.com/customers/101

Expected Status:

200 OK

Expected Response:

{
  "customerId": 101,
  "customerName": "Rahul Sharma",
  "country": "India"
}

---

# POST Request Example

## Create Customer

Method:

POST

URL:

https://api.example.com/customers

Headers:

Content-Type: application/json

Body:

{
  "customerName": "Amit Verma",
  "country": "India"
}

Expected Status:

201 Created

---

# PUT Request Example

## Update Customer Country

Method:

PUT

URL:

https://api.example.com/customers/101

Body:

{
  "country": "Bharat"
}

Expected Status:

200 OK

---

# DELETE Request Example

## Delete Customer

Method:

DELETE

URL:

https://api.example.com/customers/101

Expected Status:

200 OK

or

204 No Content

---

# Authentication Example

## Bearer Token

Headers:

Authorization: Bearer <token>

Example:

Authorization: Bearer eyJhbGciOi...

Expected Status:

200 OK

---

# Common API Issues

## 400 Bad Request

Possible Causes:

- Missing fields
- Invalid JSON
- Incorrect data type

---

## 401 Unauthorized

Possible Causes:

- Missing token
- Invalid token
- Expired token

---

## 403 Forbidden

Possible Causes:

- User lacks permission
- Access denied

---

## 404 Not Found

Possible Causes:

- Incorrect URL
- Resource does not exist

---

## 500 Internal Server Error

Possible Causes:

- Application error
- Database issue
- Service failure

---

# Troubleshooting Workflow

Scenario:

Customer cannot retrieve order information.

Steps:

1. Verify API endpoint.
2. Verify request payload.
3. Check response code.
4. Review application logs.
5. Verify database records.
6. Retest in Postman.

---

# Frequently Used Postman Features

- Collections
- Environments
- Variables
- Headers
- Authorization
- Request Body
- Response Validation
- API Testing
