
## Auto Categorize a CatalogItem

Note that our feature where we try to predict the Markable category based on textual information is currently in **alpha**.

> **Example:** Request

```http
POST https://catalog.markable.ai/category HTTP/1.1
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
        "data": {
            "url": "https://example.com/product/shoes.html",
            "name": "A shoe product",
            "description": "This is a fantastic shoe product",
            "categoryInfo": "Some relevant information about category"
        }
    }
}
```

```shell
curl -X POST https://catalog.markable.ai/category \
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
        "data": {
            "url": "https://example.com/product/shoes.html",
            "name": "A shoe product",
            "description": "This is a fantastic shoe product",
            "categoryInfo": "Some relevant information about category"
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
                "uri": "https://example.com/products/1/a.png"
            },
            {
                "uri": "https://example.com/products/1/b.png"
            }
        ],
        "category": {
            "name": "shoes"
        },
        "data": {
            "url": "https://example.com/product/shoes.html",
            "name": "A shoe product",
            "description": "This is a fantastic shoe product",
            "categoryInfo": "Some relevant information about category"
        }
    }

```

Given an item without a category, we try and figure out what the the [Supported Markable category](#supported-categories) is based on the textual information you provide. Its best to run this call with as much textual information as possible in the freeform `data` key. The response can be directly used to [create a catalog item](#create-catalog-item)

<aside class="notice">
    This operation requires a valid <code>client_access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`POST https://catalog.markable.ai/category`


### HTTP Headers

Header          | Description
----------        | ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**
