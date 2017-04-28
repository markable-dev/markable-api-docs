
## <img src="images/create-catalog-item_icon.png" alt="create-catalog-item_icon" width="26px" height="auto"> Create catalog item

> **Example:** Request

```http
POST https://api.markable.ai/catalogs/catalog-1/items HTTP/1.1
Authorization: Bearer 123abc
{
	"data": {
        "images": [
            {
                "uri": "https://example.com/products/1/a.png"
            },
            {
                "uri": "https://example.com/products/1/b.png"
            }
        ],
        "category": {
            "name": "sunglasses"
        },
        "data": {
            "id": "external-id-1",
            "foo": "bar"
        }
    }
}
```

```shell
curl -X POST https://api.markable.ai/catalogs/catalog-1/items \
-H 'Authorization: Bearer 123abc' \
-d '
{
	"data": {
        "images": [
            {
                "uri": "https://example.com/products/1/a.png"
            },
            {
                "uri": "https://example.com/products/1/b.png"
            }
        ],
        "category": {
            "name": "sunglasses"
        }
        "data": {
            "id": "external-id-1",
            "foo": "bar"
        }
    }
}
'
```

> **Example:** Response

```json
{
	"data": {
	    "_type": "CatalogItem",
	    "_id": "item-1",
	    "schema": "product",
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
	            "content_type": "image/png",
	            "width": 200,
	            "height": 300
	        },
	        {
	            "_type": "Image",
	            "_id": "2",
	            "uri": "https://example.com/products/1/b.png",
	            "content_type": "image/png",
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
	        "id": "external-id-1",
	        "foo": "bar"
	    },
	    "created_at": "2017-01-01T00:00:00.001Z",
	    "updated_at": "2017-01-01T00:00:00.001Z"
	}
}
```


Create a new [catalog item](#the-catalog-item-object).

<aside class="notice">
    This operation requires a valid <code>access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`POST https://api.markable.ai/catalogs/:catalogId/items`


### HTTP Headers

Header       		| Description
----------      	| ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**


### Query Parameters

Parameter       | Description
----------      | ----------
`catalogId`     | The ID of the catalog. **<small>required</small>**


### Body

Attribute       | Type                  			| Description
-------         | ----------            			| -------
`data`          | [CatalogItem](#catalog-item)   	| A valid catalog item object.
