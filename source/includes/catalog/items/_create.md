
## <img src="images/create-catalog-item_icon.png" alt="create-catalog-item_icon" width="26px" height="auto"> Create catalog item

> **Example:** Request (with gender being optional)

```http
POST https://catalog.markable.ai/catalogs/catalog-1/items HTTP/1.1
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
            "name": "glasses"
        },
        "data": {
            "url": "https://example.com/product/page.html",
            "id": "external-id-1",
            "name" : "A great awesome product",
            "brand" : "Brand",
            "color" : "green",
            "gender" : "women",
            "vendor" : "vendor",
            "stock" : true,
            "price" : 30,
            "currency" : "USD"
        }
    }
}
```


```shell
curl -X POST https://catalog.markable.ai/catalogs/catalog-1/items \
-H 'Content-Type: application/json' \
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
            "name": "glasses"
        }
        "data": {
            "url": "https://example.com/product/page.html",
            "id": "external-id-1",
            "name" : "A great awesome product",
            "brand" : "Brand",
            "color" : "green",
            "gender" : "women",
            "vendor" : "vendor",
            "stock" : true,
            "price" : 30,
            "currency" : "USD"
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
            "name" : "A great awesome product",
            "brand" : "Brand",
            "color" : "green",
            "gender" : "women",
            "vendor" : "vendor",
            "stock" : true,
            "price" : 30,
            "currency" : "USD"
	    },
	    "created_at": "2017-01-01T00:00:00.001Z",
	    "updated_at": "2017-01-01T00:00:00.001Z"
	}
}
```


Create a new [catalog item](#the-catalog-item-object).

Create a new catalogItem in your catalog that will eventually get indexed.

* There is an option to pass `data.gender` for [gender search](#image-search) if needed. __By default, we use `women` as gender__
* `data.url` is mandatory since our experience allows us to redirect users to the product page.

<aside class="notice">
    This operation requires a valid <code>access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`POST https://catalog.markable.ai/catalogs/:catalogId/items`


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
