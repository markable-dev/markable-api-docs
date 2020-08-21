
## Product **Search** <img src="images/product-search.png" alt="product-search" height="auto" width="100%" align="center">

Our **Product Search** returns the most visually relevant images in your `product` schema catalog.

### <img src="images/image-search_icon.png" alt="image-search_icon" width="28px" height="auto"> The Product Search Query Object

> **Example:** Product Search Query Object (defaults to auto detect gender)

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
        "gender": ["female"],
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
        "gender": ["male"],
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
`gender`        | Array                                 | Either `['male']`, `['female']`, [`'unisex'`] or any combination can be provided in the request to limit __all__ results to specified gender. __If no gender field is provided, we will automatically detect gender and return detected gender based results.__ If gender is not detected, results will return closest matching items irrespective of gender.
`catalogs` 		| [Array&lt;Catalog&gt;](#catalog)		| List of `product` catalogs (public or private) included in the visual search scope.  Accounts can be updated with Default catalogs to perform search without explicitly specifying the catalog name or ID.   
`options`       | Object                                | A list of options that we support. Currently we support the options below

### Options for Search

These options give you the flexibility to control how our visual search is performed.

Attribute               | Type                                  | Description
-------                 | -------                               | -------
`limit`                 | Number                                | Number of results to return. Default `30`
`relevance`             | Number                                | How relevant you want the results to be. Default `50`. This takes precedence over `limit`
`auto_detect_gender`    | Boolean                               | Automatically detect gender and return detected gender based results. Note that this option defaults to `true` if gender is __not__ specified in the request, and `false` if gender is provided. 
`attributes`            | Boolean                               | Return [attributes](#supported-attributes) for every [catalogItem](#catalog-items), for both the searched input image and the images in the results. Note that this option will introduce a few 100ms in search. There is no guarantee that the attributes will be common between the input image and the result images; however, its highly likely that they will be.
`human_detection`       | Boolean                               | Return bounding boxes for human detections. Default is `false`. 
`centerness_filter`       | Boolean                               | Applies heuristics to return detections and results from the center of an image. Default is `false`. 
`return_specific_nn_match`       | Boolean                               | When a catalog item contains multiple images of the product or item, this option will __only__ return the specific image selected by similarity search.  Default is `false`. 
`family_search`       | Boolean                               | Searches similar items in related taxanomy groups. Default is `true`. 
`unique_products`       | Boolean                               | Returns only one product in catalogs where a product image is used in multiple products. Default is `false`. 
`commission_ranking`      | Object                               | Return nearest neighbor results sorted by highest commission value when available.  
`commission_ranking: enabled` | Boolean | Will activate ranking by commission value. Default is `true` when commission_ranking option is passed. 
`commission_ranking: max_items_ranked` | Number | Number of items ranked by commission value. The remaining results are sorted by similiarty score. 
`commission_ranking: max_items_returned`  | Number |  Number of results to return. This setting overrides limit settings in Lens API.
