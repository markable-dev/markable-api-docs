
## <img src="images/list-catalog-item_icon.png" alt="list-catalog-item_icon" width="28px" height="auto"> List catalog items

> **Example:** Request

```http
GET https://catalog.markable.ai/catalogs/catalog-1/items HTTP/1.1
Authorization: Bearer 123abc
```

```shell
curl -X GET https://catalog.markable.ai/catalogs/catalog-1/items \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer 123abc'
```
<!--
```python
import requests

url = "https://catalog.markable.ai/catalogs/catalog-1/items"

headers = {
    'Content-Type': "application/json",
    'Authorization': "Bearer 123abc",
    }

response = requests.request("GET", url, headers=headers)

print(response.text)
```
-->

> **Example:** Request with filters

```http
GET https://catalog.markable.ai/catalogs/catalog-1/items?success=true&limit=50&skip=0&category=dresses HTTP/1.1
Authorization: Bearer 123abc
```

```shell
curl -X GET https://catalog.markable.ai/catalogs/catalog-1/items?success=true&limit=50&skip=0&category=dresses \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer 123abc'
```
<!--
```python
import requests

url = "https://catalog.markable.ai/catalogs/catalog-1/items?success=true&limit=50&skip=0&category=dresses"

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
    "data": [
        {
            "_id": "item-1",
            "images": [
                {
                    "uri": "https://agreatproductimage/a.jpg",
                    "_type": "Image",
                    "_id": "uniqueID",
                    "thumbnail": {
                        "uri": "https://markable/thumbnail/product/a.jpeg",
                        "width": 75,
                        "height": 100
                    },
                    "status": "ok",
                    "error": null,
                    "width": 1000,
                    "height": 1334,
                    "snapshot": {
                        "path": "/export/markable-cv-service/id",
                        "content_type": "image/jpeg",
                        "size": 90035
                    },
                    "stats": {
                        "download": null
                    }
                },
                {
                    "uri": "https://agreatproductimage/b.jpg",
                    "_type": "Image",
                    "_id": "uniqueID",
                    "thumbnail": {
                        "uri": "https://markable/thumbnail/product/b.jpeg",
                        "width": 75,
                        "height": 100
                    },
                    "status": "ok",
                    "error": null,
                    "width": 1000,
                    "height": 1334,
                    "snapshot": {
                        "path": "/export/markable-cv-service/id",
                        "content_type": "image/jpeg",
                        "size": 73484
                    },
                    "stats": {
                        "download": null
                    }
                },
                {
                    "uri": "https://agreatproductimage/c.jpg",
                    "_type": "Image",
                    "_id": "uniqueID",
                    "thumbnail": {
                        "uri": "https://markable/thumbnail/product/c.jpeg",
                        "width": 75,
                        "height": 100
                    },
                    "status": "ok",
                    "error": null,
                    "width": 1000,
                    "height": 1334,
                    "snapshot": {
                        "path": "/export/markable-cv-service/id",
                        "content_type": "image/jpeg",
                        "size": 61302
                    },
                    "stats": {
                        "download": null
                    }
                }
            ],
            "data": {
                "id": "external-id",
                "sku": "external-sku",
                "name": "product name",
                "url": "https://example.com/product.html",
                "color": "blue",
                "gender": "women",
                "description": "Product description",
                "category": "Shoulder Bags",
                "stock": true,
                "price": 80,
                "currency": "US"
            },
            "category": {
                "name": "handbags",
                "id": "handbags"
            },
            "_type": "CatalogItem",
            "created_at": "2019-03-07T11:00:17.101Z",
            "updated_at": "2019-03-13T18:05:07.337Z",
            "status": "nn_pending",
            "catalog": {
                "_id": "catalog_id_1"
            },
            "schema": "product",
            "fingerprint": "uniqueID",
            "indexing_started_at": {
                "cv": "2019-03-09T21:07:29.548721+00:00"
            },
            "indexing_ended_at": {
                "cv": "2019-03-09T21:07:38.005306+00:00"
            },
            "error": null,
            "failed_count": {
                "cv": 0
            }
        },
        {
            "_id": "item-2",
            "images": [
                {
                    "uri": "https://anothergreatproductimage/a.jpg",
                    "_type": "Image",
                    "_id": "uniqueID",
                    "thumbnail": {
                        "uri": "https://markable/thumbnail/anotherproduct/a.jpeg",
                        "width": 75,
                        "height": 100
                    },
                    "status": "ok",
                    "error": null,
                    "width": 1000,
                    "height": 1334,
                    "snapshot": {
                        "path": "/export/markable-cv-service/id",
                        "content_type": "image/jpeg",
                        "size": 66440
                    },
                    "stats": {
                        "download": null
                    }
                },
                {
                    "uri": "https://anothergreatproductimage/b.jpg",
                    "_type": "Image",
                    "_id": "uniqueID",
                    "thumbnail": {
                        "uri": "https://markable/thumbnail/anotherproduct/b.jpeg",
                        "width": 75,
                        "height": 100
                    },
                    "status": "ok",
                    "error": null,
                    "width": 1000,
                    "height": 1334,
                    "snapshot": {
                        "path": "/export/markable-cv-service/id",
                        "content_type": "image/jpeg",
                        "size": 60084
                    },
                    "stats": {
                        "download": null
                    }
                },
                {
                    "uri": "https://anothergreatproductimage/c.jpg",
                    "_type": "Image",
                    "_id": "uniqueID",
                    "thumbnail": {
                        "uri": "https://markable/thumbnail/anotherproduct/c.jpeg",
                        "width": 75,
                        "height": 100
                    },
                    "status": "ok",
                    "error": null,
                    "width": 1000,
                    "height": 1334,
                    "snapshot": {
                        "path": "/export/markable-cv-service/id",
                        "content_type": "image/jpeg",
                        "size": 62613
                    },
                    "stats": {
                        "download": null
                    }
                }
            ],
            "data": {
                "id": "external-id",
                "sku": "external-sku",
                "name": "product name",
                "url": "https://example.com/anotherproduct.html",
                "color": "blue",
                "gender": "women",
                "description": "Product description",
                "category": "Shoes",
                "stock": true,
                "price": 80,
                "currency": "US"
            },
            "category": {
                "name": "shoes",
                "id": "shoes"
            },
            "_type": "CatalogItem",
            "created_at": "2019-03-07T11:00:18.421Z",
            "updated_at": "2019-03-13T18:05:07.382Z",
            "status": "nn_pending",
            "catalog": {
                "_id": "catalog_id_1"
            },
            "schema": "product",
            "fingerprint": "uniqueID",
            "indexing_started_at": {
                "cv": "2019-03-09T21:07:29.550073+00:00"
            },
            "indexing_ended_at": {
                "cv": "2019-03-09T21:07:39.090980+00:00"
            },
            "error": null,
            "failed_count": {
                "cv": 0
            }
        }
    ]
}
```


Get all existing [catalog items](#the-catalog-item-object).

<aside class="notice">
    This operation requires a valid <code>client_access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`GET https://catalog.markable.ai/catalogs/:catalogId/items`


### HTTP Headers

Header       		| Description
----------      	| ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**


### Query Parameters

Parameter       | Description
----------      | ----------
`limit`         | The limit of items to return (defaults to 20).
`skip`          | The skip of items to return.
`success`       | Set this value filter by `success` status
`error`         | Set this value filter by `error` status
`pending`       | Set this value filter by `pending` status
`category`      | The category of the items to filter by
`attributes`    | `Boolean`. Returns [attributes](#supported-attributes) for every [catalogItem](#catalog-items)

