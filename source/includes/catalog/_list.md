
## <img src="images/list-catalog_icon.png" alt="list-catalog-objects_icon" width="28px" height="auto"> List catalogs

> **Example:** Request

```http
GET https://catalog.markable.ai/catalogs HTTP/1.1
Authorization: Bearer 123abc
```

```shell
curl -X GET https://catalog.markable.ai/catalogs \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer 123abc'
```
<!--
```python
import requests

url = "https://catalog.markable.ai/catalogs"

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
            "_id": "catalog_id_1",
            "_type": "Catalog",
            "schema": "product",
            "name": "product_catalog",
            "description": "catalog_2",
            "size": 0,
            "access": "public",
            "created_at": "2019-03-12T00:19:33.448Z",
            "updated_at": "2019-03-12T00:19:33.478Z",
            "user": {
                "_type": "User",
                "_id": "user_id_1"
            }
        },
        {
            "_id": "catalog_id_2",
            "_type": "Catalog",
            "schema": "style",
            "name": "style_catalog",
            "description": "style catalog",
            "size": 0,
            "access": "private",
            "created_at": "2019-03-12T00:22:02.002Z",
            "updated_at": "2019-03-12T00:22:02.030Z",
            "user": {
                "_type": "User",
                "_id": "user_id_1"
            }
        }
    ]
}
```


Get all existing [catalogs](#the-catalog-object).

<aside class="notice">
    This operation requires a valid <code>client_access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`GET https://catalog.markable.ai/catalogs`


### HTTP Headers

Header              | Description
----------          | ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**


### Route

None

### Query Parameters

Parameter       | Description
----------      | ----------
`limit`         | The limit of items to return (defaults to 50).
`skip`          | The skip of items to return.
