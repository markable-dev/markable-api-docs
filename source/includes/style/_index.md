
# How to Wear It Search

Our *How to Wear it* search gives style results given a specific image. Its best if the searched image is a product image.

As an example, if you search with a shoe (a product image), results from your [style catalog](#catalogs) will be shown.

## <img src="images/image-search_icon.png" alt="image-search_icon" width="28px" height="auto"> The How to Wear it Query Object

> **Example:** How to Wear it Query Object

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

A **How to Wear it Query** (object) defines a visual search query for an image.

Attribute 		| Type 									| Description
------- 		| -------								| -------
`image_uri` 	| String								| A valid image URI. **<small>required</small>**
`gender`        | Array                                 | `['men', 'women']` or a sub array of both. __By default we return all gender results.__
`catalogs` 		| [Array&lt;Catalog&gt;](#catalog)		| List of `style` catalogs (public or private) - which will be included the visual search scope.
`options`       | Object                                | A list of options that we support. Currently we support the options below

### Options for Search

These options give you the flexibility to control how our visual search is performed.

Attribute               | Type                                  | Description
-------                 | -------                               | -------
`limit`                 | Number                                | Number of results to return. Default `30`
`relevance`             | Number                                | How relevant you want the results to be. Default `50`. This takes precedence over `limit`
`auto_detect_gender`    | Boolean                               | Auto detect gender in the input image to scope search to specific genders, takes precedence over `gender` above. Currently in **alpha**. Note that this does introduce a slow down of a few 100ms in search.
`attributes`            | Boolean                               | Return [attributes](#supported-attributes) for every [catalogItem](#catalog-items), for both the searched input image and the images in the results. Note that this does introduce a slow down of a few 100ms in search. Secondly, there is no guarantee that the attributes will be common between the input image and the result images; however, its highly likely that they would be.

### Search contraints on the searched input Image

We have constraints on the image sizes we search on. We support `.jpg`, `.jpeg`, `.png`, `.webp` and

Minimum image size = `100`

Maximum image size = `3200`

Maximum image memory size = `2.5 * 1024 * 1024`

