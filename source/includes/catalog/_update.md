
## <img src="images/update-catalog_icon.png" alt="update-catalog_icon" width="28px" height="auto"> Update catalog

> **Example:** Request

```http
PUT https://catalog.markable.ai/catalogs/catalog_id_1 HTTP/1.1
Authorization: Bearer 123abc
{
	"data": {
        "name": "new_name_1",
        "description": "Revised catalog description"
    }
}
```

```shell
curl -X PUT https://catalog.markable.ai/catalogs/catalog_id_1 \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer 123abc' \
-d '
{
	"data": {
        "name": "new_name_1",
        "description": "Revised catalog description"
    }
}
'
```
<!--
```python
import requests

url = "https://catalog.markable.ai/catalogs/catalog-1"

payload = {
    "data": {
        "name": "catalog-1",
        "description": "My first catalog",
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
        "_type": "Catalog",
        "_id": "catalog_id_1"
        "schema": "product",
        "name": "new_name_1",
        "description": "Revised catalog description",
        "size": 0,
        "access": "public",
        "created_at": "2019-03-11T20:40:36.726Z",
        "updated_at": "2019-03-11T20:40:36.753Z",
        "user": {
            "_type": "User",
            "_id": "user_id_1"
        },
    }
}
```


Update an existing [catalog](#the-catalog-object).

<aside class="notice">
    This operation requires a valid <code>client_access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`PUT https://catalog.markable.ai/catalogs/:catalogId`


### HTTP Headers

Header              | Description
----------          | ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**


### Route

Parameter       | Description
----------      | ----------
`catalogId`     | The ID of the catalog. **<small>required</small>**


### Body

Attribute       | Type                  | Description
-------         | ----------            | -------
`data`          | [Catalog](#catalog)   | A valid catalog object.
