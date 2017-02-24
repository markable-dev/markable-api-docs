
## Create catalog

> **Example:** Request

```http
POST http://api.markable.ai/catalogs HTTP/1.1
Authorization: Bearer 123abc
{
	"data": {
        "name": "catalog-1",
        "description": "My first catalog",
        "schema": "Product"
    }
}
```

```shell
curl -X POST http://api.markable.ai/catalogs \
-H 'Authorization: Bearer 123abc' \
-d '
{
	"data": {
        "name": "catalog-1",
        "description": "My first catalog",
        "schema": "Product"
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
        "_stats": 0,
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


Create a new [catalog](#the-catalog-object).

<aside class="notice">
    This operation requires a valid <code>access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`POST http://api.markable.ai/catalogs`


### HTTP Headers

Header              | Description
----------          | ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**


### Query Parameters

None


### Body

Attribute       | Type                  | Description
-------         | ----------            | -------
`data`          | [Catalog](#catalog)   | A valid catalog object.

