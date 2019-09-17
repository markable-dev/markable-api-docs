
### <img src="images/search-image_icon.png" alt="search-image_icon" width="28px" height="auto"> HTWI Search

<!--
```python
import requests
url = "https://catalog.markable.ai/image/search/style"

payload = {
    "data": {
        "image_uri": "http://i.com/1.png"
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

> **Example:** How to Wear it with `style` Catalog Names

```http
POST https://catalog.markable.ai/image/search/style HTTP/1.1
Authorization: Bearer 123abc
{
    "data": {
        "image_uri": "http://i.com/1.png",
        "catalogs": [
            {
                "name": "style-catalog-name-1"
            },
            {
                "name": "style-catalog-name-2"
            }
        ]
    }
}
```

```shell
curl -X POST https://catalog.markable.ai/image/search/style \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer 123abc' \
-d '
{
    "data": {
        "image_uri": "http://i.com/1.png",
        "catalogs": [
            {
                "name": "style-catalog-name-1"
            },
            {
                "name": "style-catalog-name-2"
            }
        ]
    }
}
'
```
<!--
```python
import requests

url = "https://catalog.markable.ai/image/search/style"

payload = {
    "data": {
        "image_uri": "http://i.com/1.png",
        "catalogs": [
            {
                "name": "style-catalog-name-1"
            },
            {
                "name": "style-catalog-name-2"
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

> **Example:** How to Wear it with `style` Catalogs IDS

```http
POST https://catalog.markable.ai/image/search/style HTTP/1.1
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
curl -X POST https://catalog.markable.ai/image/search/style \
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

url = "https://catalog.markable.ai/image/search/style"

payload = {
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

headers = {
    'Content-Type': "application/json",
    'Authorization': "Bearer 123abc",
    }

response = requests.request("POST", url, data=payload, headers=headers)
print(response.text)
```
-->

> **Example:** Simple How to Wear it with `style` Catalogs and Gender

```http
POST https://catalog.markable.ai/image/search/style HTTP/1.1
Authorization: Bearer 123abc
{
  "data": {
        "image_uri": "http://i.com/1.png",
        "gender": ["male"],
        "catalogs": [
            {
                "name": "style-catalog-name-1"
            },
            {
                "name": "style-catalog-name-2"
            }
        ]
    }
}
```

```shell
curl -X POST https://catalog.markable.ai/image/search/style \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer 123abc' \
-d '
{
	"data": {
        "image_uri": "http://i.com/1.png",
        "gender": ["male", "female"],
        "catalogs": [
            {
                "name": "style-catalog-name-1"
            },
            {
                "name": "style-catalog-name-2"
            }
        ]
    }
}
'
```
<!--
```python
import requests

url = "https://catalog.markable.ai/image/search/style"

payload = {
    "data": {
        "image_uri": "http://i.com/1.png",
        "gender": ["male", "female"],
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

headers = {
    'Content-Type': "application/json",
    'Authorization': "Bearer 123abc",
    }

response = requests.request("POST", url, data=payload, headers=headers)
print(response.text)
```
-->

> **Example:** *Multipart* How to Wear it with `style` Catalogs (Alpha availability)

```http
POST https://catalog.markable.ai/image/search/style HTTP/1.1
Authorization: Bearer 123abc
Content-Type: multipart/form-data; charset=utf-8;
... (See shell for a full example)
```

```shell
curl -X POST https://catalog.markable.ai/image/search/style \
-H 'Content-Type: multipart/form-data;' \
-H 'Authorization: Bearer 123abc' \
-F 'image=@/local/folder/1.png' \
-F 'data={ "catalogs": [{ "name": "style-catalog-name-1" }] }'
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
        "catalogs": [{"name": "style-catalog-name-1"}]
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
            "width": 1848,
            "height": 885
        },
        "stats": {
            "cv_detection": 3919,
            "nn_search": 240,
            "db_queries": 195
        },
        "catalogs": {
            "requested": [
                "style_catalog_id_1"
            ],
            "searched": [
                "style_catalog_id_1"
            ]
        },
        "gender": [
             "auto-detect"
        ],
        "options": {
            "limit": 30,
            "relevance": 50,
            "attributes": false,
            "auto_detect_gender": false,
            "human_detection": false
        }
    },
    "data": [
        {
            "_type": "SearchResult",
            "_id": "uniqueID",
            "score": 0.8623029589653015,
            "category": {
                "_type": "Category",
                "_id": "shoes",
                "name": "shoes"
            },
            "bounding_box": {
                "_type": "BoundingBox",
                "x": 0,
                "y": 0,
                "width": 1846.52392578125,
                "height": 851.519287109375
            },
            "gender": [
                "female",
                "unisex"
            ],
            "matches": [
                {
                    "_type": "style",
                    "_id": "uniqueID",
                    "score": "0.911",
                    "images": [
                        {
                            "height": 960,
                            "error": null,
                            "status": "ok",
                            "uri": "https://somestylephoto/image.jpg",
                            "width": 626,
                            "thumbnail": {
                                "uri": "https://thumbnail.jpeg",
                                "width": 65,
                                "height": 100
                            }
                        }
                    ],
                    "data": {
                        "id": "any custom data",
                        "name": "custom product name",
                        "url": "link_to_style_image_page",
                    },
                    "catalog": {
                        "_type": "Catalog",
                        "_id": "style_catalog_id_1",
                        "name": null
                    },
                    "created_at": "2019-03-14T15:57:57.669Z",
                    "updated_at": "2019-03-14T15:57:57.669Z"
                },
                {
                    "_type": "style",
                    "_id": "uniqueID",
                    "score": "0.908",
                    "images": [
                        {
                            "error": null,
                            "height": 744,
                            "width": 935,
                            "status": "ok",
                            "uri": "https://somestylephoto2/image.jpg",
                            "thumbnail": {
                                "uri": "https://thumbnail.jpeg",
                                "width": 100,
                                "height": 80
                            }
                        }
                    ],
                    "data": {
                        "id": "any custom data",
                        "name": "custom product name",
                        "url": "link_to_style_image_page",
                    },
                    "catalog": {
                        "_type": "Catalog",
                        "_id": "style_catalog_id_1",
                        "name": null
                    },
                    "created_at": "2019-03-14T15:57:57.669Z",
                    "updated_at": "2019-03-14T15:57:57.669Z"
                },
            ]
        }
    ]
}
```

Given a product image, find how it fits with different fashion styles. In specific, HTWI search returns results from a
catalog of schema `style`.

<aside class="notice">
    This operation requires a valid <code>access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`POST https://catalog.markable.ai/image/search/style`


### HTTP Headers

Header              | Description
----------          | ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**


### Query Parameters

None


### Body

Attribute       | Type                                                      | Description
-------         | ----------                                                | -------
`data`          | [ImageSearchQuery](#the-how-to-wear-it-query-object)        | A valid Image Search object.
