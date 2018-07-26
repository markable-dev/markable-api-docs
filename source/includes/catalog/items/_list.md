
## <img src="images/list-catalog-item_icon.png" alt="list-catalog-item_icon" width="28px" height="auto"> List catalog items

> **Example:** Request

```http
GET https://catalog.markable.ai/catalogs/catalog-1/items HTTP/1.1
Authorization: Bearer 123abc
```

```shell
curl -X GET https://catalog.markable.ai/catalogs/catalog-1/items \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer 123abc'
```
<!--
```python
import requests

url = "https://catalog.markable.ai/catalogs/catalog-1/items"

headers = {
    'Content-Type': "application/json",
    'Authorization': "Bearer 123abc",
    }

response = requests.request("GET", url, headers=headers)

print(response.text)
```
-->

> **Example:** Request with filters

```http
GET https://catalog.markable.ai/catalogs/catalog-1/items?success=true&limit=50&skip=0&category=dresses HTTP/1.1
Authorization: Bearer 123abc
```

```shell
curl -X GET https://catalog.markable.ai/catalogs/catalog-1/items?success=true&limit=50&skip=0&category=dresses \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer 123abc'
```
<!--
```python
import requests

url = "https://catalog.markable.ai/catalogs/catalog-1/items?success=true&limit=50&skip=0&category=dresses"

headers = {
    'Content-Type': "application/json",
    'Authorization': "Bearer 123abc",
    }

response = requests.request("GET", url, headers=headers)

print(response.text)
```
-->

> **Example:** Response

```json
{
	"data": [
	    {
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
	            "id": "external-id-1",
	            "foo": "bar"
	        },
	        "created_at": "2017-01-01T00:00:00.001Z",
	        "updated_at": "2017-01-01T00:00:00.001Z"
	    },
	    {
	        "_type": "CatalogItem",
	        "_id": "item-2",
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
                "url": "https://company.xyz/external-product-id-2",
	            "id": "external-id-2",
	            "foo": "bar"
	        },
	        "created_at": "2017-01-01T00:00:00.001Z",
	        "updated_at": "2017-01-01T00:00:00.001Z"
	    }
	]
}
```


Get all existing [catalog items](#the-catalog-item-object).

<aside class="notice">
    This operation requires a valid <code>client_access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`GET https://catalog.markable.ai/catalogs/:catalogId/items`


### HTTP Headers

Header       		| Description
----------      	| ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**


### Query Parameters

Parameter       | Description
----------      | ----------
`limit`         | The limit of items to return (defaults to 10).
`skip`          | The skip of items to return.
`success`       | Set this value filter by `success` status
`error`         | Set this value filter by `error` status
`pending`       | Set this value filter by `pending` status
`category`      | The category of the items to filter by
`attributes`    | `Boolean`. Returns [attributes](#supported-attributes) for every [catalogItem](#catalog-items)

