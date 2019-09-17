
## How to Wear It **Search** <img src="images/htwi-search.png" alt="How-to-wear-it-search" height="auto" width="100%" align="center">

Our **How to Wear it** search gives style results given a specific image. Its best if the searched image is a product image.

As an example, if you search with a shoe (a product image), results from your [style catalog](#catalogs) will be shown.

### <img src="images/image-search_icon.png" alt="image-search_icon" width="28px" height="auto"> The How to Wear it Query Object

> **Example:** How to Wear it Query Object

```json
{
    "data": {
        "image_uri": "https://example.com/images/1.png",
        "catalogs": [
            {
                "name": "style-catalog-name-1"
            },
            {
                "name": "style-catalog-name-2"
            }
        ]
    }
}
```

A **How to Wear it Query** (object) defines a visual search query for an image.

Attribute       | Type                                  | Description
-------         | -------                               | -------
`image_uri`     | String                                | A valid image URI. **<small>required</small>**
`gender`        | Array                                 | Either `['male']`, `['female']`, [`'unisex'`] or any combination can be provided in the request to limit __all__ results to specified gender. __If no gender field is provided, we will automatically detect gender and return detected gender based results.__ If gender is not detected, results will return closest matching items irrespective of gender. 
`catalogs`      | [Array&lt;Catalog&gt;](#catalog)      | List of `style` catalogs (public or private) included in the visual search scope.  Accounts can be updated with Default catalogs to perform search without explicitly specifying the catalog name or ID.   
`options`       | Object                                | A list of options that we support. Currently we support the options below

### Options for Search

These options give you the flexibility to control how our visual search is performed.

Attribute               | Type                                  | Description
-------                 | -------                               | -------
`limit`                 | Number                                | Number of results to return. Default `30`
`relevance`             | Number                                | How relevant you want the results to be. Default `50`. This takes precedence over `limit`
`auto_detect_gender`  | Boolean                                 | Automatically detect gender and return detected gender based results. Note that this option defaults to `true` if gender is __not__ specified in the request, and `false` if gender is provided. 
`attributes`            | Boolean                               | Return [attributes](#supported-attributes) for every [catalogItem](#catalog-items), for both the searched input image and the images in the results. Note that this option will introduce a few 100ms in search. There is no guarantee that the attributes will be common between the input image and the result images; however, its highly likely that they will be.
`human_detection`       | Boolean                               | Return bounding boxes for human detections.  Default is `false`. 
`centerness_filter`       | Boolean                               | Applies heuristics to return detections and results from the center of an image.  Default is `false`. 
`return_specific_nn_match`       | Boolean                               | When a catalog item contains multiple images of the product or item, this option will __only__ return the specific image selected by similarity search.  Default is `false`. 
`family_search`       | Boolean                               | Searches similar items in related taxanomy groups.  Default is `true`. 
`unique_products`       | Boolean                               | Returns only one product in catalogs where a product image is used in multiple products.  Default is `false`. 
