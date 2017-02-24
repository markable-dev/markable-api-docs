
# Video Search

## The Video Search Query Object

> **Example:** Video Search Query Object

```json
{
	"image_uri": "https://example.com/videos/1.mp4",
	"catalogs": [
	    {
	        "name": "catalog-1"
	    },
	    {
	        "name": "catalog-2"
	    }
	]
}
```

A **Video Search Query** (object) defines a visual search query for a video.

Attribute 		| Type 										| Description
------- 		| -------									| -------
`video_uri` 	| String									| A valid video URI. **<small>required</small>**
`catalogs` 		| [Array&lt;Catalog&gt;](#catalogs)		| List of catalogs (public or private) - which will be included the visual search scope.