
## <img src="images/get-catalog_icon.png" alt="get-catalog-objects_icon" width="28px" height="auto"> Get catalog

> **Example:** Request

```http
GET https://api.markable.ai/catalogs/catalog-1 HTTP/1.1
Authorization: Bearer 123abc
```

```shell
curl -X GET https://api.markable.ai/catalogs/catalog-1 \
-H 'Authorization: Bearer 123abc'
```

> **Example:** Response

```json
{
	"data": {
        "_type": "Catalog",
        "_id": "1",
        "size": 0,
        "user": {
            "_type": "User",
            "_id": "1"
        },
        "name": "catalog-1",
        "description": "My first catalog",
        "schema": "product",
        "created_at": "2017-01-01T00:00:00.001Z",
        "updated_at": "2017-01-01T00:00:00.001Z"
    }
}
```


Get an existing [catalog](#the-catalog-object).

<aside class="notice">
    This operation requires a valid <code>access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`GET https://api.markable.ai/catalogs/:catalogId`


### HTTP Headers

Header              | Description
----------          | ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**


### Query Parameters

Parameter       | Description
----------      | ----------
`catalogId`     | The ID of the catalog. **<small>required</small>**
