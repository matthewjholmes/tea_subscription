## Tea Subscription API

![image](https://user-images.githubusercontent.com/78521446/155746611-03f4b506-7892-4ba6-af5c-f4c615ce812b.png)

A back-end application that exposes an API to support user-facing application for a tea subscription service. The API exposed will allow users to create and cancel subscriptions, as well as providing an index of all their subscriptions.

### Prerequisites
Rails 5.2.6
Ruby 2.7.2

### Installation
Fork & clone this repo

Run bundle install to install gem packages

Run rails db:{drop,create,migrate} to set up the database

Run rails s and navigate to localhost:3000 to consume Tea Subscription API endpoints.

### Endpoints

_Create a subscription._

Sample Request:

`Request POST /api/v1/subscriptions?title=Subscription&price=9.99&status=active&frequency=4&quantity=1&customer_id=1&tea_id=1`

Sample Response:

```
  {
    "data": {
        "id": "2",
        "type": "subscription",
        "attributes": {
            "title": "Subscription",
            "price": 9.99,
            "status": "active",
            "frequency": 4,
            "quantity": 1,
            "customer_id": 1,
            "tea_id": 1
        }
    }
}
  ```
  
_Cancel a subscription_

Sample Request:

`PATCH /api/v1/subscriptions/2?status=cancelled`

Sample Response:

  ```
{
  "response": "Subscription has been cancelled."
}
  ```
  
_Request all subscriptions for one customer_

Sample Request:

`GET /api/v1/customers/1/subscriptions
  
Sample Response:

  ```
{
    "data": [
        {
            "id": "1",
            "type": "subscription",
            "attributes": {
                "title": "New Subscription",
                "price": 9.99,
                "status": "cancelled",
                "frequency": 4,
                "quantity": 1,
                "customer_id": 1,
                "tea_id": 1
            }
        },
        {
            "id": "2",
            "type": "subscription",
            "attributes": {
                "title": "Newer Subscription",
                "price": 9.99,
                "status": "cancelled",
                "frequency": 4,
                "quantity": 1,
                "customer_id": 1,
                "tea_id": 1
            }
        }
    ]
}
  ```

Contact:
Matt Holmes
