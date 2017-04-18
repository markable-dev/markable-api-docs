
## <img src="images/update-catalog_icon.png" alt="update-catalog_icon" width="28px" height="auto"> Update catalog

> **Example:** Request

```http
PUT https://api.markable.ai/catalogs/catalog-1 HTTP/1.1
Authorization: Bearer 123abc
{
	"data": {
        "name": "catalog-1",
        "description": "My first catalog"
    }
}
```

```shell
curl -X PUT https://api.markable.ai/catalogs/catalog-1 \
-H 'Authorization: Bearer 123abc' \
-d '
{
	"data": {
        "name": "catalog-1",
        "description": "My first catalog"
    }
}
'
```

> **Example:** Response

```json
{
	"data": {
        "_type": "Catalog",
        "_id": "1",
        "user": {
            "_type": "User",
            "_id": "1"
        },
        "name": "catalog-1",
        "description": "My first catalog",
        "schema": "Product",
        "created_at": "2017-01-01T00:00:00.001Z",
        "updated_at": "2017-01-01T00:00:00.001Z"
    }
}
```


Update an existing [catalog](#the-catalog-object).

<aside class="notice">
    This operation requires a valid <code>access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`PUT https://api.markable.ai/catalogs/:catalogId`


### HTTP Headers

Header              | Description
----------          | ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**


### Query Parameters

Parameter       | Description
----------      | ----------
`catalogId`     | The ID of the catalog. **<small>required</small>**


### Body

Attribute       | Type                  | Description
-------         | ----------            | -------
`data`          | [Catalog](#catalog)   | A valid catalog object.
