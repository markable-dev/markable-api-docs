
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
<!--
```python
import requests

url = "https://catalog.markable.ai/catalogs/catalog-1/items/item-1"

headers = {
   'Content-Type': "application/json",
   'Authorization': "Bearer 123abc",
   }

response = requests.request("DELETE", url, headers=headers)

print(response.text)

```
-->

> **Example:** Response

```json
{
    "data": {
        "images": [
            {
                "_type": "Image",
                "_id": "image1",
                "uri": "https://example.com/products/2/a.png",
                "width": null,
                "height": null,
                "thumbnail": {
                    "uri": "hhttps://markable/images/2/a.jpeg",
                    "width": 66,
                    "height": 100
                },
                "status": "pending",
                "error": null
            },
            {
                "_type": "Image",
                "_id": "image2",
                "uri": "https://example.com/products/2/b.png",
                "width": null,
                "height": null,
                "thumbnail": {
                    "uri": "https://markable/images/2/b.jpeg",
                    "width": 66,
                    "height": 100
                },
                "status": "pending",
                "error": null
            }
        ],
        "data": {
            "url": "https://example.com/product/shoes.html",
            "name": "A shoe product",
            "description": "This is a fantastic shoe product",
            "categoryInfo": "Some relevant information about category",
            "gender": "women"
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


Delete an existing [catalog item](#the-catalog-item-object).

<aside class="notice">
    This operation requires a valid <code>client_access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`DELETE https://catalog.markable.ai/catalogs/:catalogId/items/:itemId`


### HTTP Headers

Header       		| Description
----------      	| ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**


### Route

Parameter       | Description
----------      | ----------
`catalogId`     | The ID of the catalog. **<small>required</small>**
`itemId`       	| The ID of the catalog item. **<small>required</small>**

