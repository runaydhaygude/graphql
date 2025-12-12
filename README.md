# GraphQL Customer Query Example

This project demonstrates how to query a GraphQL API to fetch customer details by email.

## Prerequisites

- Java 17
- Maven
- Spring Boot
- A running GraphQL server on `http://localhost:8080/graphql`

## Query Description

The following GraphQL query retrieves customer details based on their email address:

### Query
```graphql
query {
    customerByEmail(email: "runay.dhaygude@test.com") {
        id
        firstName
        lastName
        email
        phone
        city
        state
        zipCode
    }
}
```

### Example Request

Use the following `curl` command to execute the query:

```bash
curl -X POST http://localhost:8080/graphql \
-H "Content-Type: application/json" \
-d '{
  "query": "query($email: String!) { customerByEmail(email: $email) { id firstName lastName email phone city state zipCode } }", 
  "variables": {
    "email": "runay.dhaygude@test.com"
  }
}'
```

### Response Example

If the query is successful, the server will return a response similar to:

```json
{
  "data": {
    "customerByEmail": {
      "id": "1",
      "firstName": "Runay",
      "lastName": "Dhaygude",
      "email": "runay.dhaygude@test.com",
      "phone": "8881112222",
      "city": "Pune",
      "state": "MH",
      "zipCode": "411002"
    }
  }
}
```


### Mutation Example

The following GraphQL mutation allows you to add a new customer using the `CustomerInput` type:

#### Mutation
```graphql
mutation {
    addCustomer(input: {
        firstName: "John",
        lastName: "Doe",
        email: "john.doe@example.com",
        phone: "9876543210",
        address: "123 Main St",
        city: "Springfield",
        state: "IL",
        zipCode: "62704"
    }) {
        id
        firstName
        lastName
        email
        phone
        address
        city
        state
        zipCode
    }
}
```

#### Example Request

Use the following `curl` command to execute the mutation:

```bash
curl -X POST http://localhost:8080/graphql \
-H "Content-Type: application/json" \
-d '{
  "query": "mutation($input: CustomerInput!) { addCustomer(input: $input) { id firstName lastName email phone address city state zipCode } }",
  "variables": {
    "input": {
      "firstName": "John",
      "lastName": "Doe",
      "email": "john.doe@example.com",
      "phone": "9876543210",
      "address": "123 Main St",
      "city": "Springfield",
      "state": "IL",
      "zipCode": "62704"
    }
  }
}'
```

#### Response Example

If the mutation is successful, the server will return a response similar to:

```json
{
  "data": {
    "addCustomer": {
      "id": "1",
      "firstName": "John",
      "lastName": "Doe",
      "email": "john.doe@example.com",
      "phone": "9876543210",
      "address": "123 Main St",
      "city": "Springfield",
      "state": "IL",
      "zipCode": "62704"
    }
  }
}
```