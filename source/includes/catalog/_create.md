
## <img src="images/create-catalog_icon.png" alt="create-catalog_icon" width="28px" height="auto"> Create catalog

> **Example:** Request

```http
POST https://catalog.markable.ai/catalogs HTTP/1.1
Authorization: Bearer 123abc
{
	"data": {
        "name": "catalog-1",
        "description": "My first catalog",
        "schema": "product",
        "access": "public"
    }
}
```

```shell
curl -X POST https://catalog.markable.ai/catalogs \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer 123abc' \
-d '
{
	"data": {
        "name": "catalog-1",
        "description": "My first catalog",
        "schema": "product",
        "access": "public"
    }
}
'
```

<!--
```python
import requests

url = "https://catalog.markable.ai/catalogs"

payload = {
    "data": {
        "name": "catalog-1",
        "description": "My first catalog",
        "schema": "product"
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
        "name": "catalog_1",
        "description": "My new catalog",
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


Create a new [catalog](#the-catalog-object).

<aside class="notice">
    This operation requires a valid <code>client_access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`POST https://catalog.markable.ai/catalogs`


### HTTP Headers

Header              | Description
----------          | ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**


### Route

None


### Body

Attribute       | Type                  | Description
-------         | ----------            | -------
`data`          | [Catalog](#catalog)   | A valid catalog object.

