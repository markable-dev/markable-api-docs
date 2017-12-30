
## Supported Categories

> **Example:** Request

```http
GET https://catalog.markable.ai/category HTTP/1.1
Authorization: Bearer 123abc
```

```shell
curl -X GET https://catalog.markable.ai/category \
-H 'Authorization: Bearer 123abc'
```

> **Example:** Response

```json
{
    "meta": {
        "request": {
            "method": "GET",
            "params": {},
            "protocol": "http",
            "query": {},
            "route": "/category",
            "url": "/category"
        },
        "response": {},
        "service": {
            "environment": "production",
            "name": "markable-api-catalog"
        }
    },
    "data": [
        "dresses",
        "suiting_blazers",
        "sweaters",
        "pants"
    ]
}
```


Markable's supported categories.

<aside class="notice">
    This operation requires a valid <code>access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`GET https://catalog.markable.ai/category`


### HTTP Headers

Header          | Description
----------        | ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**
