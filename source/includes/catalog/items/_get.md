
## Get catalog item

> **Example:** Request

```http
GET https://api.markable.ai/catalogs/catalog-1/items/item-1 HTTP/1.1
Authorization: Bearer 123abc
```

```shell
curl -X GET https://api.markable.ai/catalogs/catalog-1/items/item-1 \
-H 'Authorization: Bearer 123abc'
```

> **Example:** Response

```json
{
	"data": {
	    "_type": "Product",
	    "_id": "item-1",
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
	        "id": "external-id-1",
	        "foo": "bar"
	    },
	    "created_at": "2017-01-01T00:00:00.001Z",
	    "updated_at": "2017-01-01T00:00:00.001Z"
	}
}
```


Get an existing [catalog item](#the-catalog-item-object).

<aside class="notice">
    This operation requires a valid <code>access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`GET https://api.markable.ai/catalogs/:catalogId/items/:itemId`


### HTTP Headers

Header       		| Description
----------      	| ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**


### Query Parameters

Parameter       | Description
----------      | ----------
`catalogId`     | The ID of the catalog. **<small>required</small>**
`itemId`       	| The ID of the catalog item. **<small>required</small>**

