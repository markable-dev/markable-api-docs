
## Update catalog item

> **Example:** Request

```http
PUT https://catalog.markable.ai/catalogs/catalog-1/items HTTP/1.1
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
            "url": "https://company.xyz/external-product-id-2",
	        "id": "external-id-1",
	        "foo": "bar"
	    }
	}
}
```

```shell
curl -X PUT https://catalog.markable.ai/catalogs/catalog-1/items \
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
      },
	    "data": {
            "url": "https://company.xyz/external-product-id-2",
	        "id": "external-id-1",
	        "foo": "bar"
	    }
	}
}
'
```

<!--
```python
import requests
url = "https://catalog.markable.ai/catalogs/catalog-1/items"
payload = {
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
            "url": "https://company.xyz/external-product-id-2",
	        "id": "external-id-1",
	        "foo": "bar"
	    }
	}
}
headers = {
    'Content-Type': "application/json",
    'Authorization': "Bearer 123abc",
    }
response = requests.request("PUT", url, data=payload, headers=headers)
print(response.text)
```
-->

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
            "url": "https://company.xyz/external-product-id-1",
	        "id": "external-id-123",
	        "foo": "bar"
	    },
	    "created_at": "2017-01-01T00:00:00.001Z",
	    "updated_at": "2017-01-01T00:00:00.001Z"
	}
}
```


Update an existing [catalog item](#the-catalog-item-object).

<aside class="notice">
    This operation requires a valid <code>client_access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`PUT https://catalog.markable.ai/catalogs/:catalogId/items/:itemId`


### HTTP Headers

Header       		| Description
----------      	| ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**


### Route

Parameter       | Description
----------      | ----------
`catalogId`     | The ID of the catalog. **<small>required</small>**
`itemId`       	| The ID of the catalog item. **<small>required</small>**


### Body

Attribute       | Type                  			| Description
-------         | ----------            			| -------
`data`          | [CatalogItem](#catalog-item)   	| A valid catalog item object.

