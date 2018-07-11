
## Supported Attributes

CatalogItems after indexing get assigend attributes, based on their category. Attributes can be of type `color`, `pattern`, `sleeve length`
and more.

> **Example:** Request

```http
GET https://catalog.markable.ai/attributes HTTP/1.1
Authorization: Bearer 123abc
```

```shell
curl -X GET https://catalog.markable.ai/attributes \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer 123abc'
```

```python
import requests

url = "https://catalog.markable.ai/attributes"

headers = {
   'Content-Type': "application/json",
   'Authorization': "Bearer 123abc",
   }

response = requests.request("GET", url, headers=headers)

print(response.text)
```

> **Example:** Response

This is a snippet of our attributes.

```json
{
    "data": {
        "belts": {
            "color": [
                "blue",
                "brown",
                "purple",
                "grey",
                "..."
            ],
            "pattern": [
                "cheetah/leopard print",
                "gingham",
                "checkered",
                "..."
            ]
        },
        "blouses_shirts": {
            "closing_style": [
                "multiple buttons/snaps",
                "no closures",
                "..."
            ],
            "collar_type": [
                "square neck",
                "mandarin collar",
                "puritan collar",
                "off-shoulder",
                "straight across/strapless",
                "..."
            ],
            "color": [
                "blue",
                "red",
                "..."
            ],
            "pattern": [
                "cheetah/leopard print",
                "floral",
                "tribal print",
                "..."
            ],
            "sleeve_length": [
                "sleeveless",
                "short/cap sleeve",
                "long (full sleeve)",
                "..."
            ]
        }
    }
}
```


Markable's supported attributes per category.

<aside class="notice">
    This operation requires a valid <code>client_access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`GET https://catalog.markable.ai/attributes`


### HTTP Headers

Header          | Description
----------        | ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**
