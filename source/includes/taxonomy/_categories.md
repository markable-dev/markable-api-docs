
## Supported Categories

> **Example:** Request

```http
GET https://catalog.markable.ai/category HTTP/1.1
Authorization: Bearer 123abc
```

```shell
curl -X GET https://catalog.markable.ai/category \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer 123abc'
```
<!--
```python
import requests

url = "https://catalog.markable.ai/category"

headers = {
   'Content-Type': "application/json",
   'Authorization': "Bearer 123abc",
   }

response = requests.request("GET", url, headers=headers)

print(response.text)
```
-->

> **Example:** Response

This is our **current exhaustive** list of supported categories.

```json
{
    "data": [
        "backpacks",
        "baseballcaps",
        "beanieknitcaps",
        "berets",
        "blouses",
        "boots",
        "buttondowns",
        "cardigans",
        "clutches",
        "coats_jackets",
        "dresses",
        "glasses",
        "handbags",
        "henleys",
        "hoodies",
        "jeans",
        "jumpsuits",
        "leggings",
        "longsleeveshirts",
        "messengerbags",
        "overalls",
        "pants",
        "polos",
        "rompers",
        "sandals",
        "scarves_wraps",
        "shoes",
        "shorts",
        "skirts",
        "slippers",
        "suitcoats_blazers",
        "sunhats_cowboyhats",
        "sweaters",
        "tanks_camis",
        "tees",
        "ties",
        "tunics",
        "vests",
        "watches"
    ]
}
```


Markable's supported categories.

<aside class="notice">
    This operation requires a valid <code>client_access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`GET https://catalog.markable.ai/category`


### HTTP Headers

Header          | Description
----------        | ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**
