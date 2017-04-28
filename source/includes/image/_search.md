
## <img src="images/search-image_icon.png" alt="search-image_icon" width="28px" height="auto"> Search

> **Example:** Request

```http
POST https://api.markable.ai/image/search HTTP/1.1
Authorization: Bearer 123abc
{
	"data": {
        "image_uri": "https://example.com/images/1.png",
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
        "image_uri": "https://example.com/images/1.png",
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
        "image_uri": "https://example.com/images/1.png",
        "catalogs": [
            {
                "name": "catalog-1"
            },
            {
                "name": "catalog-2"
            }
        ]
    },
    "data": {
        "products": [
            {
                "_type": "CatalogItem",
                "_id": "1",
                "schema": "product",
                "score": 0.90,
                "category": {
                    "_type": "Category",
                    "_id": "1",
                    "name": "category-1"
                },
                "bounding_box": {
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
                        "width": 200,
                        "height": 300
                    },
                    {
                        "_type": "Image",
                        "_id": "2",
                        "uri": "https://example.com/products/1/b.png",
                        "width": 200,
                        "height": 300
                    }
                ],
                "category": {
                    "_type": "Category",
                    "_id": "1",
                    "name": "sunglasses"
                },
                "data": {
                    "id": "external-product-id-1",
                    "url": "https://company.xyz/external-product-id-1",
                    "foo": "bar"
                },
                "created_at": "2017-01-01T00:00:00.001Z",
                "updated_at": "2017-01-01T00:00:00.001Z"
            },
            {
                "_type": "CatalogItem",
                "_id": "2",
                "schema": "product",
                "score": 0.88,
                "category": {
                    "_type": "Category",
                    "_id": "1",
                    "name": "category-1"
                },
                "bounding_box": {
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
                        "width": 200,
                        "height": 300
                    },
                    {
                        "_type": "Image",
                        "_id": "2",
                        "uri": "https://example.com/products/2/b.png",
                        "width": 200,
                        "height": 300
                    }
                ],
                "category": {
                    "_type": "Category",
                    "_id": "1",
                    "name": "sunglasses"
                },
                "data": {
                    "id": "external-product-id-2",
                    "url": "https://company.xyz/external-product-id-2",
                    "foo": "bar"
                },
                "created_at": "2017-01-01T00:00:00.001Z",
                "updated_at": "2017-01-01T00:00:00.001Z"
            }
        ]
    }
}
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
