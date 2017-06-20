
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
POST https://api.markable.ai/user/authorize HTTP/1.1
{
	"data": {
		"email": "developer@client.com",
        "password": "password"
	}
}
```

```shell
curl -X POST https://api.markable.ai/user/authorize \
-d '
{
	"data": {
		"email": "developer@client.com",
        "password": "password"
	}
}
'
```

> **Example:** Response with User Access Token

```json
{
    "data": {
    	"access_token": "usertoken123abc"
    }
}
```

Create authorization (authentication token) for a user.


### HTTP Request

`POST https://api.markable.ai/user/authorize`


### HTTP Headers

Standard


### Query Parameters

None


### Body

Attribute       | Type                  									| Description
-------         | ----------            									| -------
`data`          | [UserCredentials](#the-user-credentials-object)   	    | A valid user credentials object.


## Get User and Client

This request gives you user information and further the default client we have created for you.

```http
GET https://api.markable.ai/users/ HTTP/1.1
Authorization: Bearer usertoken123abc
```

```shell
curl -X GET https://api.markable.ai/users/ \
-H 'Authorization: Bearer usertoken123abc'
```

> **Example:** Response

```json
{
    "data": {
        "type": "User",
        "name": "Developer at Client",
        "email": "developer@client.com",
        "user_id": "user_id_1",
        "clients": [
            {
                "type": "Client",
                "client_id": "client_id_1"
                "client_secret": "client_secret_1",
                "user_id": "user_id_1",
                "scope": "default"
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

`GET https://api.markable.ai/users`


### HTTP Headers

Header          | Description
----------        | ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :user_access_token`, where `user_access_token` is given by [Authentication](#authentication). **<small>required</small>**
