
## <img src="images/list-catalog_icon.png" alt="list-catalog-objects_icon" width="28px" height="auto"> List public catalogs

> **Example:** Request

```http
GET https://catalog.markable.ai/catalogs/public HTTP/1.1
Authorization: Bearer 123abc
```

```shell
curl -X GET https://catalog.markable.ai/catalogs/public \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer 123abc'
```

> **Example:** Response

```json
{
  "data": [
        {
            "_type": "Catalog",
            "_id": "1",
            "size": 0,
            "user": {
                "_type": "User",
                "_id": "1"
            },
            "name": "catalog-1-public",
            "description": "My first public catalog",
            "schema": "product",
            "created_at": "2017-01-01T00:00:00.001Z",
            "updated_at": "2017-01-01T00:00:00.001Z"
        },
        {
            "_type": "Catalog",
            "_id": "2",
            "size": 0,
            "user": {
                "_type": "User",
                "_id": "2"
            },
            "name": "catalog-2-public",
            "description": "My second public catalog",
            "schema": "product",
            "created_at": "2017-01-01T00:00:00.001Z",
            "updated_at": "2017-01-01T00:00:00.001Z"
        }
    ]
}
```

Get all existing [catalogs](#the-catalog-object).

<aside class="notice">
    This operation requires a valid <code>access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`GET https://catalog.markable.ai/catalogs/public`


### HTTP Headers

Header              | Description
----------          | ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**


### Query Parameters

None
