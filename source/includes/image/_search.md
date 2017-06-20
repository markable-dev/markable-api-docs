
## <img src="images/search-image_icon.png" alt="search-image_icon" width="28px" height="auto"> Search

> **Example:** Simple Image Search without Catalogs

```http
POST https://api.markable.ai/image/search HTTP/1.1
Authorization: Bearer 123abc
{
	"data": {
        "image_uri": "http://i.com/1.png"
    }
}
```

> **Example:** Image Search with Catalogs

```http
POST https://api.markable.ai/image/search HTTP/1.1
Authorization: Bearer 123abc
{
  "data": {
        "image_uri": "http://i.com/1.png",
        "catalogs": [
            {
                "name": "catalog-1"
            },
            {
                "name": "catalog-2"
            }
        ]
    }
}
```

```shell
curl -X POST https://api.markable.ai/image/search \
-H 'Authorization: Bearer 123abc' \
-d '
{
	"data": {
        "image_uri": "http://i.com/1.png",
        "catalogs": [
            {
                "name": "catalog-1"
            },
            {
                "name": "catalog-2"
            }
        ]
    }
}
'
```

> **Example:** Response

```json
{
    "meta": {
        "image_uri": "http://i.com/1.png",
        "catalogs": [
            {
                "name": "catalog-1"
            },
            {
                "name": "catalog-2"
            }
        ]
    },
    "data": [
        {
            "category": "shorts",
            "matches": [
                {
                    "image": {
                        "uri": "http://i.com/result1.png",
                    },
                    "score": 0.701,
                    "type": "Product",
                    "id": "5938629ec77b4a05f48f782a"
                },
                {
                    "image": {
                        "uri": "http://example.com/images/result2.png"
                    },
                    "score": 0.7,
                    "type": "Product",
                    "id": "59386368c77b4a05fa8f7b06"
                },
            ],
            "bounding_box": {
                "y": 266,
                "x": 54,
                "height": 145,
                "width": 204
            },
            "score": 0.963,
            "type": "SearchResult"
        },
        {
            "category": "shorts",
            "matches": [
                {
                    "image": {
                        "uri": "http://i.com/result5.png",
                    },
                    "score": 0.62,
                    "type": "Product",
                    "id": "5938629ec77b4a05f48f7821"
                },
                {
                    "image": {
                        "uri": "http://example.com/images/result4.png"
                    },
                    "score": 0.4,
                    "type": "Product",
                    "id": "59386368c77b4a05fa8f7b02"
                },
            ],
            "bounding_box": {
                "y": 266,
                "x": 54,
                "height": 145,
                "width": 204
            },
            "score": 0.831,
            "type": "SearchResult"
        }
    ]
```

Search an image - detect and retreive objects (products/logos/faces) based on visual features/similarity.

<aside class="notice">
    This operation requires a valid <code>access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`POST https://api.markable.ai/image/search`


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
