## Client Authentication

To start out with, we have created a default client for you as a user.

For the **Lens API**, you will be using your client acccess token with every request.

### The Client Credentials Object

> **Example:** Client Credentials Object

```json
{
  "client_id": "client_id_1",
  "client_secret": "client_secret_1"
}
```

The **Client Credentials** (object) refers to a object holding holding your **Markable Lens API** credentials, i.e. key token (`client_id`) and secret token (`client_secret`). These credentials will be available to any [verified developer](#authentication).

Attribute         | Description
----------        | ----------
`client_id`       | Client ID - i.e. "API key". **<small>required</small>**
`client_secret`     | Client secret - i.e. "API secret". **<small>required</small>**


> **Example:** Request

```http
POST https://auth.markable.ai/auth/client/authorize HTTP/1.1
{
  "data": {
    "client_id": "client_id_1",
    "client_secret": "client_secret_1"
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
    "client_secret": "client_secret_1"
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
