
## <img src="images/delete-catalog-item_icon.png" alt="delete-catalog-item_icon" width="26px" height="auto"> Delete catalog item

> **Example:** Request

```http
DELETE https://catalog.markable.ai/catalogs/catalog-1/items/item-1 HTTP/1.1
Authorization: Bearer 123abc
```

```shell
curl -X DELETE https://catalog.markable.ai/catalogs/catalog-1/items/item-1 \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer 123abc'
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
          "name": "glasses"
      },
	    "data": {
            "url": "https://example.com/product/page.html",
	        "id": "external-id-1",
	        "foo": "bar"
	    },
	    "created_at": "2017-01-01T00:00:00.001Z",
	    "updated_at": "2017-01-01T00:00:00.001Z"
	}
}
```


Delete an existing [catalog item](#the-catalog-item-object).

<aside class="notice">
    This operation requires a valid <code>access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`DELETE https://catalog.markable.ai/catalogs/:catalogId/items/:itemId`


### HTTP Headers

Header       		| Description
----------      	| ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**


### Query Parameters

Parameter       | Description
----------      | ----------
`catalogId`     | The ID of the catalog. **<small>required</small>**
`itemId`       	| The ID of the catalog item. **<small>required</small>**

