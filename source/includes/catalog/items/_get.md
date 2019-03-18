
## <img src="images/get-catalog-item_icon.png" alt="get-catalog-item_icon" width="27px" height="auto"> Get catalog item

> **Example:** Request

```http
GET https://catalog.markable.ai/catalogs/catalog-1/items/item-1 HTTP/1.1
Authorization: Bearer 123abc
```

```shell
curl -X GET https://catalog.markable.ai/catalogs/catalog-1/items/item-1 \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer 123abc'
```
<!--
```python
import requests

url = "https://catalog.markable.ai/catalogs/catalog-1/items/item-1"

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
        "_id": "item_id_3",
        "schema_version": "v1.0.0",
        "data": {
            "url": "https://example.com/product/shoes.html",
            "name": "A shoe product",
            "description": "This is a fantastic shoe product",
            "categoryInfo": "Some relevant information about category",
            "gender": "women"
        },
        "fingerprint": "uniqueID",
        "failed_count": {
            "cv": 0
        },
        "updated_at": "2019-03-13T00:20:44.589Z",
        "schema": "product",
        "images": [
            {
                "uri": "https://example.com/products/3/a.png",
                "status": "ok",
                "width": 853,
                "height": 853,
                "error": null,
                "thumbnail": {
                    "uri": "https://markable/images/s3-url-3.jpeg",
                    "width": 100,
                    "height": 100
                }
            }
        ],
        "status": "nn_pending",
        "error": null,
        "catalog": {
            "_id": "catalog_id_1"
        },
        "indexing_ended_at": {
            "cv": "2019-03-08T22:45:05.195159+00:00"
        },
        "created_at": "2018-09-04T20:40:26.225Z",
        "indexing_started_at": {
            "cv": "2019-03-08T21:15:47.358115+00:00"
        }
    }
}
```


Get an existing [catalog item](#the-catalog-item-object).

<aside class="notice">
    This operation requires a valid <code>client_access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`GET https://catalog.markable.ai/catalogs/:catalogId/items/:itemId`


### HTTP Headers

Header       		| Description
----------      	| ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**

### Route

Parameter       | Description
----------      | ----------
`catalogId`     | The ID of the catalog. **<small>required</small>**
`itemId`       	| The ID of the catalog item. **<small>required</small>**

### Query parameters

Parameter               | Type                                  | Description
-------                 | -------                               | -------
`attributes`            | Boolean                               | Return [attributes](#supported-attributes) for every [catalogItem](#catalog-items)
