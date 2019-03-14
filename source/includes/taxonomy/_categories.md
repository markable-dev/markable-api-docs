
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
    "data": {
        "bags": [
            "handbags",
            "clutches",
            "backpacks",
            "messengerbags"
        ],
        "footwear": [
            "boots",
            "shoes",
            "sandals",
            "slippers"
        ],
        "fullbody": [
            "rompers",
            "overalls",
            "dresses",
            "jumpsuits"
        ],
        "glasses": [
            "glasses"
        ],
        "headwear": [
            "beanieknitcaps",
            "baseballcaps",
            "berets",
            "sunhats_cowboyhats"
        ],
        "humans": [
            "humans"
        ],
        "jewelry_watches": [
            "watches"
        ],
        "lowerbody": [
            "shorts",
            "jeans",
            "skirts",
            "leggings",
            "pants"
        ],
        "upperbody": [
            "vests",
            "buttondowns",
            "blouses",
            "tees",
            "suitcoats_blazers",
            "tanks_camis",
            "sweaters",
            "tunics",
            "longsleeveshirts",
            "coats_jackets",
            "hoodies",
            "henleys",
            "cardigans",
            "polos"
        ],
        "upperbody_accessories": [
            "scarves_wraps",
            "ties"
        ]
    }
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
