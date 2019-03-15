
### <img src="images/search-image_icon.png" alt="search-image_icon" width="28px" height="auto"> Product Search

<!--
```python
import requests

url = "https://catalog.markable.ai/image/search"

preload = {
    "data": {
        "image_uri": "http://i.com/1.png"
    }
}

headers = {
   'Content-Type': "application/json",
   'Authorization': "Bearer 123abc",
   }

response = requests.request("POST", url, data=preload, headers=headers)

print(response.text)
```
-->

> **Example:** Image Search with Catalogs Names (Preferred over IDS)

```http
POST https://catalog.markable.ai/image/search HTTP/1.1
Authorization: Bearer 123abc
{
    "data": {
        "image_uri": "http://i.com/1.png",
        "catalogs": [
            {
                "name": "catalog-name-1"
            },
            {
                "name": "catalog-name-2"
            }
        ]
    }
}
```

```shell
curl -X POST https://catalog.markable.ai/image/search \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer 123abc' \
-d '
{
    "data": {
        "image_uri": "http://i.com/1.png",
        "catalogs": [
            {
                "name": "catalog-name-1"
            },
            {
                "name": "catalog-name-2"
            }
        ]
    }
}
'
```
<!--
```python
import requests

url = "https://catalog.markable.ai/image/search"

payload = {
    "data": {
        "image_uri": "http://i.com/1.png",
        "catalogs": [
            {
                "name": "catalog-name-1"
            },
            {
                "name": "catalog-name-2"
            }
        ]
    }
}

headers = {
   'Content-Type': "application/json",
   'Authorization': "Bearer 123abc",
   }

response = requests.request("POST", url, data=payload, headers=headers)

print(response.text)
```
-->

> **Example:** Image Search with Catalogs IDS

```http
POST https://catalog.markable.ai/image/search HTTP/1.1
Authorization: Bearer 123abc
{
    "data": {
        "image_uri": "http://i.com/1.png",
        "catalogs": [
            {
                "_id": "catalog-id-1"
            },
            {
                "_id": "catalog-id-2"
            }
        ]
    }
}
```

```shell
curl -X POST https://catalog.markable.ai/image/search \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer 123abc' \
-d '
{
    "data": {
        "image_uri": "http://i.com/1.png",
        "catalogs": [
            {
                "_id": "catalog-id-1"
            },
            {
                "_id": "catalog-id-2"
            }
        ]
    }
}
'
```
<!--
```python
import requests

url = "https://catalog.markable.ai/image/search"

payload = {
    "data": {
        "image_uri": "http://i.com/1.png",
        "catalogs": [
            {
                "name": "catalog-id-1"
            },
            {
                "name": "catalog-id-2"
            }
        ]
    }
}

headers = {
   'Content-Type': "application/json",
   'Authorization': "Bearer 123abc",
   }

response = requests.request("POST", url, data=payload, headers=headers)

print(response.text)
```
-->


> **Example:** Simple Image Search with Catalogs and Gender

```http
POST https://catalog.markable.ai/image/search HTTP/1.1
Authorization: Bearer 123abc
{
  "data": {
        "image_uri": "http://i.com/1.png",
        "gender": ["men"],
        "catalogs": [
            {
                "name": "catalog-name-1"
            },
            {
                "name": "catalog-name-2"
            }
        ]
    }
}
```

```shell
curl -X POST https://catalog.markable.ai/image/search \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer 123abc' \
-d '
{
	"data": {
        "image_uri": "http://i.com/1.png",
        "gender": ["men"],
        "catalogs": [
            {
                "name": "catalog-name-1"
            },
            {
                "name": "catalog-name-2"
            }
        ]
    }
}
'
```
<!--
```python
import requests

url = "https://catalog.markable.ai/image/search"

payload = {
    "data": {
        "image_uri": "http://i.com/1.png",
        "gender": ["men", "women"],
        "catalogs": [
            {
                "name": "catalog-name-1"
            },
            {
                "name": "catalog-name-2"
            }
        ]
    }
}

headers = {
   'Content-Type': "application/json",
   'Authorization': "Bearer 123abc",
   }

response = requests.request("POST", url, data=payload, headers=headers)

print(response.text)
```
-->
> **Example:** *Multipart* Image Search with Catalogs (Alpha availability)

```http
POST https://catalog.markable.ai/image/search HTTP/1.1
Authorization: Bearer 123abc
Content-Type: multipart/form-data; charset=utf-8;
... (See shell for a full example)
```

```shell
curl -X POST https://catalog.markable.ai/image/search \
-H 'Content-Type: multipart/form-data;' \
-H 'Authorization: Bearer 123abc' \
-F 'image=@/local/folder/1.png' \
-F 'data={ "gender": ["women"] , "catalogs": [{  "name": "catalog-name-1" }] }'
```
<!--
```python
import requests

url = 'https://catalog.markable.ai/image/search'


files = {
    "image": open("/local/folder/1.png", "rb")
}

payload = {
    "data": {
        "catalogs": [{"name": "catalog-name-1"}]
    }
}

headers = {
   'Content-Type': "application/json",
   'Authorization': "Bearer 123abc",
}

response = requests.request("POST", url, data=payload, files=files, headers=headers)
```
-->
> **Example:** Response

```json
{
    "meta": {
        "image": {
            "uri": "http://www.somefashion.com/image.jpg",
            "width": 1365,
            "height": 2048
        },
        "stats": {
            "cv_detection": 2065,
            "nn_search": 199,
            "db_queries": 292
        },
        "catalogs": {
            "requested": [
                "catalog_id_1"
            ],
            "searched": [
                "catalog_id_1"
            ]
        },
        "gender": [
            "men",
            "women"
        ],
        "options": {
            "limit": 30,
            "relevance": 50,
            "attributes": false,
            "auto_detect_gender": false
        }
    },
    "data": [
        {
            "_type": "SearchResult",
            "_id": "uniqueID",
            "score": 0.9995391368865967,
            "category": {
                "_type": "Category",
                "_id": "humans",
                "name": "humans"
            },
            "bounding_box": {
                "_type": "BoundingBox",
                "x": 367.3973388671875,
                "y": 66.24256896972656,
                "width": 609.6744995117188,
                "height": 1876.552230834961
            },
            "gender": [
                "women"
            ],
            "matches": []
        },
        {
            "_type": "SearchResult",
            "_id": "uniqueID",
            "score": 0.9929601550102234,
            "category": {
                "_type": "Category",
                "_id": "handbags",
                "name": "handbags"
            },
            "bounding_box": {
                "_type": "BoundingBox",
                "x": 367.1494140625,
                "y": 1231.869140625,
                "width": 182.40740966796875,
                "height": 332.765380859375
            },
            "gender": [
                "women"
            ],
            "matches": [
                {
                    "_type": "product",
                    "_id": "uniqueID",
                    "score": "0.902",
                    "images": [
                        {
                            "uri": "https://handbag/image.jpg",
                            "_type": "Image",
                            "_id": "uniqueID",
                            "thumbnail": {
                                "uri": "https://thumbnail.jpeg",
                                "width": 75,
                                "height": 100
                            },
                            "status": "ok",
                            "error": null,
                            "width": 1000,
                            "height": 1334,
                        }
                    ],
                    "data": {
                        "id": "any custom data",
                        "name": "custom product name"
                        "url": "link_to_product_page",
                    },
                    "catalog": {
                        "_type": "Catalog",
                        "_id": "catalog_id_1",
                        "name": null
                    },
                    "created_at": "2019-03-14T13:50:04.134Z",
                    "updated_at": "2019-03-14T13:50:04.134Z"
                },
                {
                    "_type": "product",
                    "_id": "uniqueID",
                    "score": "0.899",
                    "images": [
                        {
                            "uri": "https://handbag/image2.jpg",
                            "_type": "Image",
                            "_id": "uniqueID",
                            "thumbnail": {
                                "uri": "https://thumbnail2.jpeg",
                                "width": 75,
                                "height": 100
                            },
                            "status": "ok",
                            "error": null,
                            "width": 1000,
                            "height": 1334,
                        }
                    ],
                    "data": {
                        "id": "any custom data",
                        "name": "custom product name",
                        "url": "link_to_product_page",
                    },
                    "catalog": {
                        "_type": "Catalog",
                        "_id": "catalog_id_1",
                        "name": null
                    },
                    "created_at": "2019-03-14T13:50:04.134Z",
                    "updated_at": "2019-03-14T13:50:04.134Z"
                },
            ]
        },
        {
            "_type": "SearchResult",
            "_id": "uniqueID",
            "score": 0.9856816530227661,
            "category": {
                "_type": "Category",
                "_id": "coats_jackets",
                "name": "coats_jackets"
            },
            "bounding_box": {
                "_type": "BoundingBox",
                "x": 408.2473449707031,
                "y": 325.932373046875,
                "width": 560.6332702636719,
                "height": 736.38623046875
            },
            "gender": [
                "women"
            ],
            "matches": [
                {
                    "_type": "product",
                    "_id": "uniqueID",
                    "score": "0.924",
                    "images": [
                        {
                            "uri": "https://jacket/image.jpg",
                            "_type": "Image",
                            "_id": "uniqueID",
                            "thumbnail": {
                                "uri": "https://thumbnail.jpeg",
                                "width": 75,
                                "height": 100
                            },
                            "status": "ok",
                            "error": null,
                            "width": 1000,
                            "height": 1334,
                        },
                    ],
                    "data": {
                        "id": "any custom data",
                        "name": "custom product name"
                    },
                    "catalog": {
                        "_type": "Catalog",
                        "_id": "catalog_id_1",
                        "name": null
                    },
                    "created_at": "2019-03-14T13:50:04.138Z",
                    "updated_at": "2019-03-14T13:50:04.138Z"
                },
                {
                    "_type": "product",
                    "_id": "uniqueID",
                    "score": "0.924",
                    "images": [
                        {
                            "uri": "https://jacket/image2.jpg",
                            "_type": "Image",
                            "_id": "uniqueID",
                            "thumbnail": {
                                "uri": "https://thumbnail2.jpeg",
                                "width": 75,
                                "height": 100
                            },
                            "status": "ok",
                            "error": null,
                            "width": 1000,
                            "height": 1334,
                        },
                    ],
                    "data": {
                        "id": "any custom data",
                        "name": "custom product name",
                        "url": "link_to_product_page",
                    },
                    "catalog": {
                        "_type": "Catalog",
                        "_id": "catalog_id_1",
                        "name": null
                    },
                    "created_at": "2019-03-14T13:50:04.138Z",
                    "updated_at": "2019-03-14T13:50:04.138Z"
                },
            ]
        },
    ]
}
```

Search an image - detect and retreive products based on visual features/similarity.

<aside class="notice">
    This operation requires a valid <code>access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`POST https://catalog.markable.ai/image/search`


### HTTP Headers

Header              | Description
----------          | ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**


### Query Parameters

None


### Body

Attribute       | Type                                                      | Description
-------         | ----------                                                | -------
`data`          | [ImageSearchQuery](#the-image-search-query-object)        | A valid image search object.
