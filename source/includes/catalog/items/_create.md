
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
            "gender" : "female",
            "age_group": "adults"
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
            "gender" : "female",
            "age_group": "adults",
            "vendor" : "vendor",
            "stock" : true,
            "price" : 30,
            "currency" : "USD"
        }
    }
}
'
```
<!--
```pyhton
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
        }
        "data": {
            "url": "https://example.com/product/page.html",
            "id": "external-id-1",
            "name" : "A great awesome product",
            "brand" : "Brand",
            "color" : "green",
            "gender" : "female",
            "age_group": "adults"
            "vendor" : "vendor",
            "stock" : true,
            "price" : 30,
            "currency" : "USD"
        }
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

> **Example:** Response

```json
{
    "data": {
        "images": [
            {
                "uri": "https://example.com/products/1/a.png",
                "_type": "Image",
                "status": "pending",
                "error": null
            },
            {
                "uri": "https://example.com/products/1/b.png",
                "_type": "Image",
                "status": "pending",
                "error": null
            }
        ],
        "data": {
            "url": "https://example.com/product/page.html",
            "id": "external-id-1",
            "name" : "A great awesome product",
            "brand" : "Brand",
            "color" : "green",
            "gender" : "female",
            "age_group": "adults"
            "vendor" : "vendor",
            "stock" : true,
            "price" : 30,
            "currency" : "USD"
        },
        "category": {
            "name": "glasses",
            "id": "glasses"
        },
        "_type": "CatalogItem",
        "created_at": "2019-03-12T21:22:04.345Z",
        "updated_at": "2019-03-12T21:22:04.345Z",
        "status": "cv_pending",
        "catalog": {
            "_type": "Catalog",
            "_id": "1",
            "name": "catalog1"
        },
        "schema": "product",
        "fingerprint": "uniqueID",
        "_id": "item-1"
    }
}
```

> **Example:** Request (with thumbnail generation option)

```http
POST https://catalog.markable.ai/catalogs/catalog-1/items HTTP/1.1
Authorization: Bearer 123abc
{
    "data": {
        "options": { "transform": true, "width": 100, "height": 100 },
        "images": [
            {
                "uri": "https://example.com/products/2/a.png"
            },
            {
                "uri": "https://example.com/products/2/b.png"
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
            "gender" : "female",
            "age_group": "adults"
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
        "options": { "transform": true, "width": 100, "height": 100 },
        "images": [
            {
                "uri": "https://example.com/products/2/a.png"
            },
            {
                "uri": "https://example.com/products/2/b.png"
            }
        ],
        "category": {
            "name": "shoes"
        }
        "data": {
            "url": "https://example.com/product/shoes.html",
            "gender": "female",
            "age_group": "adults",
            "name": "A shoe product",
            "description": "This is a fantastic shoe product",
            "categoryInfo": "Some relevant information about category",
        }
    }
}
'
```
> **Example:** Response

```json
{
    "data": {
        "images": [
            {
                "_type": "Image",
                "_id": "1",
                "uri": "https://example.com/products/2/a.png",
                "width": null,
                "height": null,
                "status": "pending",
                "error": null
            },
            {
                "_type": "Image",
                "_id": "2",
                "uri": "https://example.com/products/2/b.png",
                "width": null,
                "height": null,
                "status": "pending",
                "error": null
            }
        ],
        "data": {
            "url": "https://example.com/product/shoes.html",
            "name": "A shoe product",
            "description": "This is a fantastic shoe product",
            "categoryInfo": "Some relevant information about category",
            "gender": "female",
            "age_group": "adults"
        },
        "category": {
            "name": "shoes",
            "id": "shoes"
        },
        "_type": "CatalogItem",
        "created_at": "2019-03-12T21:58:43.099Z",
        "updated_at": "2019-03-12T21:58:43.100Z",
        "status": "cv_pending",
        "catalog": {
            "_type": "Catalog",
            "_id": "catalog_id_1",
            "name": "catalog1"
        },
        "schema": "product",
        "fingerprint": "uniqueID",
        "_id": "item-2"
    }
}
```
Create a new [catalog item](#the-catalog-item-object) in your catalog that will eventually get indexed.

* There is an option to pass `data.gender` for [gender search](#image-search) if needed. __By default, we assign `female` as gender__
* There is an option to pass `data.age_group`. __By default, we assign `adults` as age_group__
* `data.url`, `data.gender`, and `data.age_group` are mandatory.

Indexing

* We index the products and update the status of every image on a catalog item. Status are either `success`, `error` and `pending`.
Catalog item images start at `pending` status. 
* The image width and height will be appended to each image object after successful indexing.
* If we detect errors with indexing, we expose information on why in the `images.error` object.



<aside class="notice">
    This operation requires a valid <code>client_access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`POST https://catalog.markable.ai/catalogs/:catalogId/items`


### HTTP Headers

Header       		| Description
----------      	| ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**


### Route

Parameter       | Description
----------      | ----------
`catalogId`     | The ID of the catalog. **<small>required</small>**


### Body

Attribute       | Type                  			| Description
-------         | ----------            			| -------
`data`          | [CatalogItem](#catalog-item)   	| A valid catalog item object.
