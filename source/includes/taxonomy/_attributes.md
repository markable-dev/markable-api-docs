
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
<!--
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
-->

> **Example:** Response

This is a snippet of our attributes.

```json
{
    "data": {
        "backpacks": [
            "color",
            "pattern"
        ],
        "baseballcaps": [
            "color",
            "pattern"
        ],
        "beanieknitcaps": [
            "color",
            "pattern"
        ],
        "berets": [
            "color",
            "pattern"
        ],
        "blouses": [
            "closing_style",
            "collar_type",
            "color",
            "pattern",
            "sleeve_length",
            "upper_hemline"
        ],
        "boots": [
            "color",
            "heel_height",
            "heel_type",
            "pattern",
            "shaft_height",
            "toe_style"
        ],
        "buttondowns": [
            "closing_style",
            "collar_type",
            "color",
            "pattern",
            "sleeve_length",
            "upper_hemline"
        ],
        "cardigans": [
            "closing_style",
            "collar_type",
            "color",
            "pattern",
            "sleeve_length",
            "upper_hemline"
        ],
        "clutches": [
            "color",
            "pattern"
        ],
        "coats_jackets": [
            "closing_style",
            "collar_type",
            "color",
            "pattern",
            "sleeve_length",
            "upper_hemline"
        ],
        "dresses": [
            "closing_style",
            "collar_type",
            "color",
            "dress_types",
            "pattern",
            "sleeve_length",
            "upper_hemline"
        ],
        "glasses": [
            "color",
            "pattern"
        ],
        "handbags": [
            "color",
            "pattern"
        ],
        "henleys": [
            "closing_style",
            "collar_type",
            "color",
            "pattern",
            "sleeve_length",
            "upper_hemline"
        ],
        "hoodies": [
            "closing_style",
            "collar_type",
            "color",
            "pattern",
            "sleeve_length",
            "upper_hemline"
        ],
        "humans": [
            "gender"
        ],
        "jeans": [
            "color",
            "jeans_fit",
            "jeans_type",
            "lower_hemline",
            "pattern"
        ],
        "jumpsuits": [
            "closing_style",
            "collar_type",
            "color",
            "pattern",
            "sleeve_length",
            "upper_hemline"
        ],
        "leggings": [
            "color",
            "lower_hemline",
            "pattern"
        ],
        "longsleeveshirts": [
            "closing_style",
            "collar_type",
            "color",
            "pattern",
            "sleeve_length",
            "upper_hemline"
        ],
        "messengerbags": [
            "color",
            "pattern"
        ],
        "overalls": [
            "closing_style",
            "collar_type",
            "color",
            "pattern",
            "sleeve_length",
            "upper_hemline"
        ],
        "pants": [
            "color",
            "lower_hemline",
            "pattern"
        ],
        "polos": [
            "closing_style",
            "collar_type",
            "color",
            "pattern",
            "sleeve_length",
            "upper_hemline"
        ],
        "rompers": [
            "closing_style",
            "collar_type",
            "color",
            "pattern",
            "sleeve_length",
            "upper_hemline"
        ],
        "sandals": [
            "color",
            "heel_height",
            "heel_type",
            "pattern",
            "shaft_height",
            "toe_style"
        ],
        "scarves_wraps": [
            "color",
            "pattern"
        ],
        "shoes": [
            "color",
            "heel_height",
            "heel_type",
            "pattern",
            "shaft_height",
            "toe_style"
        ],
        "shorts": [
            "color",
            "lower_hemline",
            "pattern"
        ],
        "skirts": [
            "color",
            "lower_hemline",
            "pattern",
            "skirt_type"
        ],
        "slippers": [
            "color",
            "heel_height",
            "heel_type",
            "pattern",
            "shaft_height",
            "toe_style"
        ],
        "suitcoats_blazers": [
            "closing_style",
            "collar_type",
            "color",
            "pattern",
            "sleeve_length",
            "upper_hemline"
        ],
        "sunhats_cowboyhats": [
            "color",
            "pattern"
        ],
        "sweaters": [
            "closing_style",
            "collar_type",
            "color",
            "pattern",
            "sleeve_length",
            "upper_hemline"
        ],
        "tanks_camis": [
            "closing_style",
            "collar_type",
            "color",
            "pattern",
            "sleeve_length",
            "upper_hemline"
        ],
        "tees": [
            "closing_style",
            "collar_type",
            "color",
            "pattern",
            "sleeve_length",
            "upper_hemline"
        ],
        "ties": [
            "color",
            "pattern"
        ],
        "tunics": [
            "closing_style",
            "collar_type",
            "color",
            "pattern",
            "sleeve_length",
            "upper_hemline"
        ],
        "vests": [
            "closing_style",
            "collar_type",
            "color",
            "pattern",
            "sleeve_length",
            "upper_hemline"
        ],
        "watches": [
            "color",
            "pattern"
        ]
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
