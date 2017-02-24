
# Authentication

To access **Markable Lens API** you will need to be a registered developer, if you are not already you need to [signup](https://markable.ai/signup) and get verified first.


## The Client Credentials Object

> **Example:** Client Credentials Object

```json
{
	"client_id": "123",
	"client_secret": "abc123"
}
```

The **Client Credentials** (object) refers to a object holding holding your **Markable Lens API** credentials, i.e. key token (`client_id`) and secret token (`client_secret`). These credentials will be available to any [verified developer](#authentication).

Attribute       	| Description
----------      	| ----------
`client_id`     	| Client ID - i.e. "API key". **<small>required</small>**
`client_secret`     | Client secret - i.e. "API secret". **<small>required</small>**


## Authorize

> **Example:** Request

```http
POST http://api.markable.ai/client/authorize HTTP/1.1
{
	"data": {
		"client_id": "abc",
        "client_secret": "abc123"
	}
}
```

```shell
curl -X POST http://api.markable.ai/client/authorize \
-d '
{
	"data": {
		"client_id": "abc",
		"client_secret": "abc123"
	}
}
'
```

> **Example:** Response

```json
{
    "data": {
    	"access_token": "123abc"
    }
}
```

Create authorization (authentication token) for a client.


### HTTP Request

`POST http://api.markable.ai/client/authorize`


### HTTP Headers

Standard


### Query Parameters

None


### Body

Attribute       | Type                  									| Description
-------         | ----------            									| -------
`data`          | [ClientCredentials](#the-client-authorization-object)   	| A valid client credentials object.




