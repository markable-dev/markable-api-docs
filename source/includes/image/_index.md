
# Image Search

## The Image Search Query Object

> **Example:** Image Search Query Object

```json
{
	"image_uri": "https://example.com/images/1.png",
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

A **Image Search Query** (object) defines a visual search query for an image.

Attribute 		| Type 									| Description
------- 		| -------								| -------
`image_uri` 	| String								| A valid image URI. **<small>required</small>**
`catalogs` 		| [Array&lt;Catalog&gt;](#catalog)		| List of catalogs (public or private) - which will be included the visual search scope.