
### <img src="images/search-image_icon.png" alt="search-image_icon" width="28px" height="auto"> HTWI Search

> **Example:** Simple How to Wear it without Catalogs

```http
POST https://catalog.markable.ai/image/search/style HTTP/1.1
Authorization: Bearer 123abc
{
	"data": {
        "image_uri": "http://i.com/1.png"
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
        "image_uri": "http://i.com/1.png"
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

> **Example:** How to Wear it with `style` Catalogs Names (Preferred over IDS)

```http
POST https://catalog.markable.ai/image/search/style HTTP/1.1
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
curl -X POST https://catalog.markable.ai/image/search/style \
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

url = "https://catalog.markable.ai/image/search/style"

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
curl -X POST https://catalog.markable.ai/image/search/style \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer 123abc' \
-d '
{
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
'
```
<!--
```python
import requests

url = "https://catalog.markable.ai/image/search/style"

payload = {
    "data": {
        "image_uri": "http://i.com/1.png",
        "gender": ["men", "women"],
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
-F 'data={ "catalogs": [{ "name": "catalog-name-1" }] }'
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
            "width": 100,
            "height": 100,
            "uri": "http://i.com/1.png"
        },
        "stats": {
            "detection": 313,
            "extraction": 141,
            "search": 8,
            "image_download": 57
        },
    },
    "data": [
        {
            "type": "StyleResult",
            "category": {
                "_type": "Category",
                "_id": "shorts",
                "name": "shorts"
            },
            "bounding_box": {
                "_type": "BoundingBox",
                "y": 266,
                "x": 54,
                "height": 145,
                "width": 204
            },
            "score": 0.963,
            "matches": [
                {
                    "_type": "CatalogItem",
                    "_id": "5938629ec77b4a05f48f782a",
                    "score": 0.701,
                    "images": [
                        {
                            "uri": "http://i.com/style/result1.png",
                            "_type": "Image"
                        },
                        {
                            "uri": "http://i.com/style/result2.png",
                            "_type": "Image"
                        }
                    ],
                    "catalog": {
                        "_type": "Catalog",
                        "name": "catalog-name-1",
                        "_id": "catalog-id-1"
                    },
                    "data": {
                        "id": "any custom data",
                        "gender": "women",
                        "detail": "custom style image details"
                    },
                    "created_at": "2017-08-10T22:54:48.547Z",
                    "updated_at": "2017-08-10T22:54:48.547Z"
                },
                {
                    "_type": "CatalogItem",
                    "_id": "59386368c77b4a05fa8f7b06",
                    "score": 0.7,
                    "images": [
                        {
                            "uri": "http://i.com/style/result2.png",
                            "_type": "Image"
                        }
                    ],
                    "catalog": {
                        "_type": "Catalog",
                        "name": "catalog-name-1",
                        "_id": "catalog-id-1"
                    },
                    "data": {
                        "id": "any custom data",
                        "gender": "women",
                        "detail": "custom style image details"
                    },
                    "created_at": "2017-08-10T22:54:48.547Z",
                    "updated_at": "2017-08-10T22:54:48.547Z"
                }
            ]
        },
        {
            "type": "StyleResult",
            "category": {
                "_type": "Category",
                "_id": "sandals",
                "name": "sandals"
            },
            "bounding_box": {
                "_type": "BoundingBox",
                "y": 266,
                "x": 54,
                "height": 145,
                "width": 204
            },
            "score": 0.831,
            "matches": [
                {
                    "_type": "CatalogItem",
                    "_id": "5938629ec77b4a05f48f7821",
                    "score": 0.62,
                    "images": [
                        {
                            "uri": "http://i.com/style/result5.png",
                            "_type": "Image"
                        }
                    ],
                    "catalog": {
                        "_type": "Catalog",
                        "name": "catalog-name-2",
                        "_id": "catalog-id-2"
                    },
                    "data": {
                        "id": "any custom data",
                        "gender": "women",
                        "detail": "custom style image details"
                    },
                    "created_at": "2017-08-10T22:54:48.547Z",
                    "updated_at": "2017-08-10T22:54:48.547Z"
                },
                {
                    "_type": "CatalogItem",
                    "_id": "59386368c77b4a05fa8f7b02",
                    "score": 0.4,
                    "images": [
                        {
                            "uri": "http://i.com/style/result4.png",
                            "_type": "Image"
                        },
                        {
                            "uri": "http://i.com/style/result5.png",
                            "_type": "Image"
                        }
                    ],
                    "catalog": {
                        "_type": "Catalog",
                        "name": "catalog-name-2",
                        "_id": "catalog-id-2"
                    },
                    "data": {
                        "id": "any custom data",
                        "gender": "women",
                        "detail": "custom style image details"
                    },
                    "created_at": "2017-08-10T22:54:48.547Z",
                    "updated_at": "2017-08-10T22:54:48.547Z"
                }
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
