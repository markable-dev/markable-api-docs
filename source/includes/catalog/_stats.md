
## <img src="images/get-catalog_icon.png" alt="get-catalog-objects_icon" width="28px" height="auto"> Catalog Stats

Gives you statistics of how the indexing is progressing for your catalogItems and the spread of categories. We are returning
the indexing status of just the first (primary) image of the catalogItem

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
        ]
    }
}
```


Get an existing [catalog](#the-catalog-object).

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
