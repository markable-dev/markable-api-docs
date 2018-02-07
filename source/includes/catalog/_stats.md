
## <img src="images/get-catalog_icon.png" alt="get-catalog-objects_icon" width="28px" height="auto"> Catalog Stats

Catalog statistics explaning

* __Indexing Status__: How many of your catalogItems are indexed, with statuses `pending`, `error` and `success`
* __Categories__: Spread of categories of your catalog
* __Gender__: Spread of gender in the catalog. `null` being that we default to `women`.

> **Example:** Request

```http
GET https://catalog.markable.ai/catalogs/catalog-1/stats HTTP/1.1
Authorization: Bearer 123abc
```

```shell
curl -X GET https://catalog.markable.ai/catalogs/catalog-1/stats \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer 123abc'
```

> **Example:** Response

```json
{
    "data": {
        "size": 4,
        "category": [
            {
                "_id": "shirts",
                "total": 1
            },
            {
                "_id": "skirts",
                "total": 1
            },
            {
                "_id": "dresses",
                "total": 2
            }
        ],
        "status": [
            {
                "_id": "pending",
                "total": 4
            }
        ],
        "gender": [
            {
                "_id": null,
                "total": 4
            }
        ]
    }
}
```


Stats for an existing [catalog](#the-catalog-object).

<aside class="notice">
    This operation requires a valid <code>access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`GET https://catalog.markable.ai/catalogs/:catalogId/stats`

### HTTP Headers

Header              | Description
----------          | ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**


### Query Parameters

Parameter       | Description
----------      | ----------
`catalogId`     | The ID of the catalog. **<small>required</small>**
