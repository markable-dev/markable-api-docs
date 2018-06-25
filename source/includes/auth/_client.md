## Client Authentication

To start out with, we have created a default client for you as a user.

For the **Lens API**, you will be using your client acccess token with every request.

### The Client Credentials Object

> **Example:** Client Credentials Object

```json
{
  "client_id": "client_id_1",
  "client_secret": "client_secret_1",
  "scope": "default"
}
```

The **Client Credentials** (object) refers to an object that holds your **Markable Lens API** credentials, i.e. key token (`client_id`) and secret token (`client_secret`). These credentials will be available to any [verified developer](#authentication).

Attribute         | Description
----------        | ----------
`client_id`       | Client ID - i.e. "API key". **<small>required</small>**
`client_secret`   | Client secret - i.e. "API secret". **<small>required</small>**
`scope`           | The scope of how the client can be used. Currently `['default', 'search']`


> **Example:** Request

```http
POST https://auth.markable.ai/auth/client/authorize HTTP/1.1
{
  "data": {
    "client_id": "client_id_1",
    "client_secret": "client_secret_1",
    "scope": "default"
  }
}
```

```shell
curl -X POST https://auth.markable.ai/auth/client/authorize \
-H 'Content-Type: application/json' \
-d '
{
  "data": {
    "client_id": "client_id_1",
    "client_secret": "client_secret_1",
    "scope": "default"
  }
}
'
```

> **Example:** Request for Search only tokens that can be *Published*

```http
POST https://auth.markable.ai/auth/client/authorize HTTP/1.1
{
  "data": {
    "client_id": "client_id_1",
    "client_secret": "client_secret_1",
    "scope": "search"
  }
}
```

```shell
curl -X POST https://auth.markable.ai/auth/client/authorize \
-H 'Content-Type: application/json' \
-d '
{
  "data": {
    "client_id": "client_id_1",
    "client_secret": "client_secret_1",
    "scope": "search"
  }
}
'
```

> **Example:** Response Client Access Token

```json
{
    "data": {
      "access_token": "clienttoken123"
    }
}
```

Create authorization (authentication token) for a client.

### Security

With the `search` scope, the resulting client access tokens can be published on the web and will only allow you to do searches. The `default` tokens on the other hand allow all operations.

### HTTP Request

`POST https://auth.markable.ai/auth/client/authorize`


### HTTP Headers

Standard


### Query Parameters

None

### Body

Attribute       | Type                                    | Description
-------         | ----------                              | -------
`data`          | [ClientCredentials](#the-client-authorization-object)     | A valid client credentials object.
