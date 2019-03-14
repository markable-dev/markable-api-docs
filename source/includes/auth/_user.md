
## User

Once you have your user account setup, (ie) your email and password ready, you can get your `user_access_token`.

These user access tokens can be further used to create [Clients](#client-authentication). Clients have access tokens
of their own.

> **Example:** User Credentials Object

```json
{
	"email": "developer@client.com",
	"password": "password"
}
```

## User Authentication

> **Example:** Request

```http
POST https://auth.markable.ai/auth/user/authorize HTTP/1.1
{
	"data": {
		"email": "developer@client.com",
        "password": "password"
	}
}
```

```shell
curl -X POST https://auth.markable.ai/auth/user/authorize \
-H 'Content-Type: application/json' \
-d '
{
	"data": {
		"email": "developer@client.com",
        "password": "password"
	}
}
'
```

<!--
```python
import requests

url = "https://auth.markable.ai/auth/user/authorize"

payload = {
    "data":
        {
         "email": "developer@client.com",
         "password": "password"
        }
 }

headers = {
    'Content-Type': "application/json",
    }

response = requests.request("POST", url, data=payload, headers=headers)

print(response.text)

```
-->

> **Example:** Response with User Access Token

```json
{ 
    "data": {
        "user_id": "1",
        "created_at": "2019-03-11T20:39:41.998Z",
        "deleted_at": null,
        "type": "Token",
        "updated_at": "2019-03-11T20:39:42.010Z",
        "access_token": "5c86c78e059dc998f2c80278",
        "expires_at": "2024-03-09T20:39:41.998Z"
    }
}
```

Create authorization (authentication token) for a user.


### HTTP Request

`POST https://auth.markable.ai/auth/user/authorize`


### HTTP Headers

Standard


### Query Parameters

None


### Body

Attribute       | Type                  									| Description
-------         | ----------            									| -------
`data`          | [UserCredentials](#the-user-credentials-object)   	    | A valid user credentials object.


## Get User and Client

This request gives you user information and further the default client we have created for you. Note that scopes are a concern of tokens
and not clients.

```http
GET https://auth.markable.ai/auth/users/ HTTP/1.1
Authorization: Bearer usertoken123abc
```

```shell
curl -X GET https://auth.markable.ai/auth/users/ \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer usertoken123abc'
```

<!--
```python
import requests

url = "https://auth.markable.ai/auth/users/"

headers = {
    'Content-Type': "application/json",
    'Authorization': "Bearer usertoken123abc",
    }

response = requests.request("GET", url, headers=headers)

print(response.text)
```
-->

> **Example:** Response

```json

{
    "data": {
        "name": "Developer at Client",
        "website": "http://client.website.com",
        "role": "user",
        "email": "developer@client.com",
        "company": "company_name",
        "created_at": "2019-03-11T20:39:34.690Z",
        "type": "User",
        "updated_at": "2019-03-11T20:39:34.781Z",
        "user_id": "user_id_1",
        "clients": [
            {
                "client_secret": "client_secret_1",
                "user_id": "user_id_1",
                "domain": "http://localhost",
                "created_at": "2019-03-11T20:39:34.789Z",
                "type": "Client",
                "updated_at": "2019-03-11T20:39:34.801Z",
                "client_id": "client_id_1"
            }
        ]
    }
}

```

<!-- ## Get User & Client -->

<aside class="notice">
    This operation requires a valid <code>user_access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`GET https://auth.markable.ai/auth/users`


### HTTP Headers

Header          | Description
----------        | ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :user_access_token`, where `user_access_token` is given by [Authentication](#authentication). **<small>required</small>**
