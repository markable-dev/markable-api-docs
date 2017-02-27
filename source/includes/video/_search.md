
## Search

> **Example:** Request

```http
POST https://api.markable.ai/video/search HTTP/1.1
Authorization: Bearer 123abc
{
	"data": {
        "video_uri": "https://example.com/videos/1.mp4",
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
curl -X POST https://api.markable.ai/video/search \
-H 'Authorization: Bearer 123abc' \
-d '
{
	"data": {
        "video_uri": "https://example.com/videos/1.mp4",
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
        "video_uri": "https://example.com/videos/1.mp4",
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
            "_type": "Frame",
            "_id": "1",
            "meta": {
                "snapshot": {
                    "image_uri": "https://api.markable.ai/video/data/1_mp4/snapshots/1.png",
                    "image_debug_uri": "https://api.markable.ai/video/data/1_mp4/snapshots/1.debug.png",
                    "index": 0,
                    "timestamp": 0,
                    "fingerprint": "abc1"
                }
            },
            "data": {
                "products": [
                    {
                        "_type": "Product",
                        "_id": "1",
                        "_score": 0.90,
                        "_category": {
                            "_type": "Category",
                            "_id": "1",
                            "name": "category-1"
                        },
                        "_bounding_box": {
                            "_type": "BoundingBox",
                            "x": 0,
                            "y": 0,
                            "width": 100,
                            "height": 100
                        },
                        "catalog": {
                            "_type": "Catalog",
                            "_id": "1",
                            "name": "catalog-1"
                        },
                        "images": [
                            {
                                "_type": "Image",
                                "_id": "1",
                                "uri": "https://example.com/products/1/a.png",
                                "thumbnail_uri": "https://example.com/products/1/a-thumb.png",
                                "content_type": "image/png",
                                "width": 200,
                                "height": 300
                            },
                            {
                                "_type": "Image",
                                "_id": "2",
                                "uri": "https://example.com/products/1/b.png",
                                "thumbnail_uri": "https://example.com/products/1/b-thumb.png",
                                "content_type": "image/png",
                                "width": 200,
                                "height": 300
                            }
                        ],
                        "categories": [
                            {
                                "_type": "Category",
                                "_id": "1",
                                "name": "sunglasses"
                            }
                        ],
                        "data": {
                            "id": "external-product-id-1",
                            "foo": "bar"
                        },
                        "created_at": "2017-01-01T00:00:00.001Z",
                        "updated_at": "2017-01-01T00:00:00.001Z"
                    },
                    {
                        "_type": "Product",
                        "_id": "2",
                        "_score": 0.88,
                        "_category": {
                            "_type": "Category",
                            "_id": "1",
                            "name": "category-1"
                        },
                        "_bounding_box": {
                            "_type": "BoundingBox",
                            "x": 0,
                            "y": 0,
                            "width": 100,
                            "height": 100
                        },
                        "catalog": {
                            "_type": "Catalog",
                            "_id": "1",
                            "name": "catalog-1"
                        },
                        "images": [
                            {
                                "_type": "Image",
                                "_id": "1",
                                "uri": "https://example.com/products/2/a.png",
                                "thumbnail_uri": "https://example.com/products/2/a-thumb.png",
                                "content_type": "image/png",
                                "width": 200,
                                "height": 300
                            },
                            {
                                "_type": "Image",
                                "_id": "2",
                                "uri": "https://example.com/products/2/b.png",
                                "thumbnail_uri": "https://example.com/products/2/b-thumb.png",
                                "content_type": "image/png",
                                "width": 200,
                                "height": 300
                            }
                        ],
                        "categories": [
                            {
                                "_type": "Category",
                                "_id": "1",
                                "name": "sunglasses"
                            }
                        ],
                        "data": {
                            "id": "external-product-id-2",
                            "foo": "bar"
                        },
                        "created_at": "2017-01-01T00:00:00.001Z",
                        "updated_at": "2017-01-01T00:00:00.001Z"
                    }
                ]
            }
        },
        {
            "_type": "Frame",
            "_id": "2",
            "meta": {
                "snapshot": {
                    "image_uri": "https://api.markable.ai/videos/1_mp4/snapshots/2.png",
                    "image_debug_uri": "https://api.markable.ai/videos/1_mp4/snapshots/2.debug.png",
                    "catalog": 0,
                    "timestamp": 2000,
                    "fingerprint": "abc2"
                }
            },
            "data": {
                "products": []
            }
        }
    ]
}
```

Search a video - detect and retreive objects (products/logos/faces) based on visual features/similarity.

<aside class="notice">
    This operation requires a valid <code>access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`POST https://api.markable.ai/video/search`


### HTTP Headers

Header              | Description
----------          | ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**


### Query Parameters

None


### Body

Attribute       | Type                                                      | Description
-------         | ----------                                                | -------
`data`          | [VideoSearchQuery](#the-video-search-query-object)    | A valid video search object.
