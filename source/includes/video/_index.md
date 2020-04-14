
# Video Search

## Moment API <img src="images/video_api_demo.png" alt="product-search" height="auto" width="100%" align="center">

Our **Video Product Search** returns the most visually relevant products for pre-processed static videos.  


## <img src="images/video-search_icon.png" alt="video-search_icon" width="28px" height="auto"> The Video Search Query Object

> **Example:** Video Search Query Object

```json
{
	"uri": "https://example.com/videos/1.mp4",
}
```


A **Video Search Query** (object) defines a visual search query for a video.

Attribute 		| Type 										| Description
------- 		| -------									| -------
`uri` 	        | String									| A valid video URI. **<small>required</small>**
`force`         | Boolean                                   | Re-indexes a previously processed video
`options`       | Object                                    | A list of options that we support. Currently we support the options below    


> **Example:** Video Search Query Object with Options

```json
{
    "uri": "https://example.com/videos/1.mp4",
    "options": { 
        "limit": 15
        "relevance": 0.80
        "family_search": true
        "deduplication": true
        "human_detection": false
        "specific_match": false
        "catalogs": [
            {
                "name": "catalog_example",
            }
        ],
        "track": [0,30]
        "seek": 0
        "precision": 1
        "framesPerSecond": 5 
    }
}
```

### Options for Search

These options give you the flexibility to control how our visual search is performed.

Attribute               | Type                                  | Description
-------                 | -------                               | -------
`limit`                 | Number                                | Maximum number of result matches to return per detection. Default `15`
`relevance`             | Number                                | Similarity confidence of results. Default `.80`. This takes precedence over `limit`
`family_search`         | Boolean                               | Searches similar items in related taxanomy groups. Default is `true`. 
`deduplication`         | Boolean                               | Returns only one product in catalogs where a product image is used in multiple products. Default is `true`.
`human_detection`       | Boolean                               | Return bounding boxes for human detections.  Default is `false`. 
`specific_match`        | Boolean                               | When a catalog item contains multiple images of the product, this option will __only__ return the specific image selected by similarity search.  Default is `false`.
`seek`                  | Number                                | The timestamp at which search query is performed. 
`track`                 | Array                                 | The timestamp relative to seek timestamp. Both seek and track values will be used to calculate an absolute timestamp for which detections are tracked and merged during search operations. 
`precision`             | Number                                | The number used to round "seek" and "track" to a human readable number. Default value is `1`
`framesPerSecond`       | Number                                | The number of frames per second at which the video is pre-processed. Default and Max value is `5`
`catalogs`              | Array                                 | List of `product` catalogs (public or private) included in the visual search scope.  Accounts can be updated with Default catalogs to perform search without explicitly specifying the catalog name or ID.   
