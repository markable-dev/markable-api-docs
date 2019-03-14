
## <img src="images/get-catalog_icon.png" alt="get-catalog-objects_icon" width="28px" height="auto"> Get catalog

> **Example:** Request

```http
GET https://catalog.markable.ai/catalogs/catalog_id_1 HTTP/1.1
Authorization: Bearer 123abc
```

```shell
curl -X GET https://catalog.markable.ai/catalogs/catalog_id_1 \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer 123abc'
```
<!--
```python
import requests

url = "https://catalog.markable.ai/catalogs/catalog-1"

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
    "data": {
        "_id": "catalog_id_1",
        "_type": "Catalog",
        "schema": "product",
        "size": 0,
        "updated_at": "2019-03-12T00:19:33.478Z",
        "name": "catalog_1",
        "description": "My new catalog",
        "created_at": "2019-03-12T00:19:33.448Z",
        "access": "public",
        "user": {
            "_type": "User",
            "_id": "user_id_1"
        }
    }
}
```


Get an existing [catalog](#the-catalog-object).

<aside class="notice">
    This operation requires a valid <code>client_access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`GET https://catalog.markable.ai/catalogs/:catalogId`


### HTTP Headers

Header              | Description
----------          | ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**


### Route

Parameter       | Description
----------      | ----------
`catalogId`     | The ID of the catalog. **<small>required</small>**
