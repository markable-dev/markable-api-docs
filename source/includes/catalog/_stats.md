
## <img src="images/get-catalog_icon.png" alt="get-catalog-objects_icon" width="28px" height="auto"> Catalog Stats

Catalog statistics explaning

* __Status__: How many of your catalogItems are indexed, with statuses `pending`, `error` and `success`
* __Category__: Spread of categories of your catalog
* __Gender__: Spread of gender in the catalog. `null` being that we default to `women`.

> **Example:** Request

```http
GET https://catalog.markable.ai/catalogs/catalog_id_1/stats HTTP/1.1
Authorization: Bearer 123abc
```

```shell
curl -X GET https://catalog.markable.ai/catalogs/catalog_id_1/stats \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer 123abc'
```

<!--
```python
import requests

url = "https://catalog.markable.ai/catalogs/catalog-1/stats"

headers = {
    'Content-Type': "application/json",
    'Authorization': "Bearer 123abc",
    }

response = requests.request("GET", url, headers=headers)

print(response.text)
```
-->

> **Example:** Response

```json
{
    "data": {
        "category": [
            {
                "_id": "skirts",
                "total": 1
            },
            {
                "_id": "glasses",
                "total": 1
            },
            {
                "_id": "jeans",
                "total": 1
            },
            {
                "_id": "overalls",
                "total": 1
            },
            {
                "_id": "tanks_camis",
                "total": 1
            }
        ],
        "status": [
            {
                "_id": "error",
                "total": 1
            },
            {
                "_id": "ok",
                "total": 1
            },
            {
                "_id": "pending",
                "total": 1
            }
        ],
        "gender": [
            {
                "_id": "men",
                "total": 1
            },
            {
                "_id": "women",
                "total": 1
            }
        ],
        "errors": [
            {
                "_id": null,
                "total": 1
            }
        ],
        "catalog": {
            "_id": "catalog_id_1",
            "_type": "Catalog",
            "schema": "product",
            "size": 10,
            "created_at": "2018-12-06T22:11:51.391Z",
            "updated_at": "2019-03-02T17:40:40.728Z",
            "name": "product_catalog",
            "access": "private",
            "description": "My product catalog",
            "user": {
                "_type": "User",
                "_id": "user_id_1"
            },
            "status": "nn_active"
        }
    }
}
```


Stats for an existing [catalog](#the-catalog-object).

<aside class="notice">
    This operation requires a valid <code>client_access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`GET https://catalog.markable.ai/catalogs/:catalogId/stats`

### HTTP Headers

Header              | Description
----------          | ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**


### Route

Parameter       | Description
----------      | ----------
`catalogId`     | The ID of the catalog. **<small>required</small>**
