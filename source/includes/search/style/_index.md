
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
`gender`        | Array                                 | Either `['men']`, `['women']`, or [`'unisex'`] can be passed in to limit results based on gender. __If no gender field is submitted, or `['men', 'women']` is provided, we will auto detect gender and return detected gender based results.__  If gender is not detected, results will return closest matching items irrespective of gender.   
`catalogs`      | [Array&lt;Catalog&gt;](#catalog)      | List of `style` catalogs (public or private) included in the visual search scope.  Accounts can be updated with Default catalogs to perform search without explicitly specifying the catalog name or ID.   
`options`       | Object                                | A list of options that we support. Currently we support the options below

### Options for Search

These options give you the flexibility to control how our visual search is performed.

Attribute               | Type                                  | Description
-------                 | -------                               | -------
`limit`                 | Number                                | Number of results to return. Default `30`
`relevance`             | Number                                | How relevant you want the results to be. Default `50`. This takes precedence over `limit`
`auto_detect_gender`    | Boolean                               | Complementary auto detect gender feature to scope search to specific genders. This option takes precedence over `gender` above. Note that this option will introduce an additional few 100ms in search.
`attributes`            | Boolean                               | Return [attributes](#supported-attributes) for every [catalogItem](#catalog-items), for both the searched input image and the images in the results. Note that this option will introduce a few 100ms in search. There is no guarantee that the attributes will be common between the input image and the result images; however, its highly likely that they will be.
