
## Product **Search** <img src="images/product-search.png" alt="product-search" height="auto" width="100%" align="center">

Our **Product Search** returns the most visually relevant images in your `product` schema catalog.

### <img src="images/image-search_icon.png" alt="image-search_icon" width="28px" height="auto"> The Product Search Query Object

> **Example:** Product Search Query Object (Defaults to auto detect gender)

```json
{
    "data": {
        "image_uri": "https://example.com/images/1.png",
        "catalogs": [
            {
                "name": "catalog-name-1"
            },
            {
                "name": "catalog-name-2"
            }
        ]
    }
}
```

> **Example:** Product Search Query Object With Gender Specific Results

```json
{
    "data": {
        "gender": ["women"],
        "image_uri": "https://example.com/images/1.png",
        "catalogs": [
            {
                "name": "catalog-name-1"
            },
            {
                "name": "catalog-name-2"
            }
        ]
    }
}
```

> **Example:** Product Search Query Object with Options

```json
{
    "data": {
        "gender": ["men"],
        "image_uri": "https://example.com/images/1.png",
        "catalogs": [
            {
                "name": "catalog-name-1"
            },
            {
                "name": "catalog-name-2"
            }
        ],
        "options": {
            "limit": 30,
            "relevance": 50
        }
    }
}
```

> **Example:** Product Search Query Object with Attributes

```json
{
    "data": {
        "image_uri": "https://example.com/images/1.png",
        "catalogs": [
            {
                "name": "catalog-name-1"
            },
            {
                "name": "catalog-name-2"
            }
        ],
        "options": {
            "relevance": 90
            "attributes": true
        }
    }
}
```
A **Product Search Query** (object) defines a visual search query for an image.

Attribute 		| Type 									| Description
------- 		| -------								| -------
`image_uri` 	| String								| A valid image URI. **<small>required</small>**
`gender`        | Array                                 | Either `['men']`, `['women']`, or [`'unisex'`] can be passed in to limit results based on gender. __If no gender field is submitted, or `['men', 'women']` is provided, we will auto detect gender and return detected gender based results.__  If gender is not detected, results will return closest matching items irrespective of gender.   
`catalogs` 		| [Array&lt;Catalog&gt;](#catalog)		| List of `product` catalogs (public or private) included in the visual search scope.  Accounts can be updated with Default catalogs to perform search without explicitly specifying the catalog name or ID.   
`options`       | Object                                | A list of options that we support. Currently we support the options below

### Options for Search

These options give you the flexibility to control how our visual search is performed.

Attribute               | Type                                  | Description
-------                 | -------                               | -------
`limit`                 | Number                                | Number of results to return. Default `30`
`relevance`             | Number                                | How relevant you want the results to be. Default `50`. This takes precedence over `limit`
<del>`auto_detect_gender`<del>   | <del>Boolean<del>                               | <del>Complementary auto detect gender feature to scope search to specific genders. This option takes precedence over `gender` above. Note that this option will introduce an additional few 100ms in search.<del>
`attributes`            | Boolean                               | Return [attributes](#supported-attributes) for every [catalogItem](#catalog-items), for both the searched input image and the images in the results. Note that this option will introduce a few 100ms in search. There is no guarantee that the attributes will be common between the input image and the result images; however, its highly likely that they will be.
`human_detection`       | Boolean                               | Return bounding boxes for human detections.  Default is false. 
