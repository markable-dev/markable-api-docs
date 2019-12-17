
# Video Search

## <img src="images/video-search_icon.png" alt="video-search_icon" width="28px" height="auto"> The Video Search Query Object

> **Example:** Video Search Query Object

```json
{
	"uri": "https://example.com/videos/1.mp4"
}
```

A **Video Search Query** (object) defines a visual search query for a video.

Attribute 		| Type 										| Description
------- 		| -------									| -------
`uri` 	        | String									| A valid video URI. **<small>required</small>**

### Options for Search

These options give you the flexibility to control how our visual search is performed.

Attribute               | Type                                  | Description
-------                 | -------                               | -------
`force`                 | Boolean                               | Reprocesses and reindexes a previously processed video
`refresh`               | Boolean                               | Updates product matches and database retrievals for a previously processed video 
