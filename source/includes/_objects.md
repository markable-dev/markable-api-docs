
# Objects

The object defintions to be aware of when working with **Markable Lens API**.

## <img src="images/catalog_icon.png" alt="catalog_icon" width="26px" height="auto"> Catalog

> **Example:** Catalog Object

```json
{
    "_type": "Catalog",
    "_id": "1",
    "size": 5,
    "name": "catalog-1",
    "description": "My first catalog",
    "schema": "product",
    "created_at": "2017-01-01T00:00:00Z",
    "updated_at": "2017-01-01T00:00:00Z"
}
```

> **Schema:** Catalog Object

```json
{
    "$schema": "http://json-schema.org/draft-04/schema",
    "type": "object",
    "description": "Catalog",
    "required": [
        "name",
        "schema"
    ],
    "properties": {
        "_type": {
            "type": "string",
            "readOnly": true,
            "default": "Catalog"
        },
        "_id": {
            "type": "string",
            "readOnly": true
        },
        "size": {
            "type": "integer",
            "minimum": 0,
            "readOnly": true
        },
        "user": {
            "type": "object",
            "description": "User",
            "properties": {
                "_type": {
                    "type": "string",
                    "readOnly": true,
                    "default": "User"
                },
                "_id": {
                    "type": "string",
                    "readOnly": true
                }
            }
        },
        "name": {
            "type": "string"
        },
        "description": {
            "type": "string"
        },
        "schema": {
            "type": "string",
            "enum": [
                "product"
            ],
            "default": "product"
        },
        "created_at": {
            "type": "string",
            "format": "date-time",
            "readOnly": true
        },
        "updated_at": {
            "type": "string",
            "format": "date-time",
            "readOnly": true
        }
    },
    "additionalProperties": false
}
```

A **Catalog** defines a catalog/group of visual objects/items (e.g. products), that can be indexed and visually searched within images and videos using visual similarity - based on the associated image(s). For us to be able to find what you looking for in your images/videos the items (exact or similar) must be known to **Markable**'s visual search engine, either using existing catalogs or your customly defined catalogs.

Attribute 		| Type 			| Description
------- 		| ----------	| -------
`_type` 		| String		| Type. **<small>read-only</small>**
`_id` 			| String  		| A unique identifier. **<small>read-only</small>**
`size` 		| Integer 		| Number or items in this catalog. **<small>read-only</small>**
`name` 			| String  		| A custom unique name.
`description`	| String 		| A custom description.
`schema`		| String  		| The schema to be used for this catalog's items. <br>Can be: `product`.
`created_at`	| Date    		| Creation date/time. **<small>read-only</small>**
`updated_at`	| Date			| Updated date/time. **<small>read-only</small>**


## <img src="images/catalog-item_icon.png" alt="catalog-item_icon" width="26px" height="auto"> Catalog Item

> **Example:** Catalog Item Object

```json
{
    "_type": "CatalogItem",
    "_id": "item-1",
    "schema": "product",
    "catalog": {
        "_type": "Catalog",
        "_id": "1",
        "name": "catalog-1"
    },
    "images": [
        {
            "_type": "Image",
            "_id": "1",
            "uri": "https://markable.ai/data/products/dress/1.png",
            "content_type": "image/png",
            "width": 100,
            "height": 100
        },
        {
            "_type": "Image",
            "_id": "2",
            "uri": "https://markable.ai/data/products/dress/2.png",
            "content_type": "image/png",
            "width": 100,
            "height": 100
        }
    ],
    "categories": [
        {
            "_type": "Category",
            "_id": "1",
            "name": "dress"
        }
    ],
    "data": {
        "id": "external-id-1",
        "url": "external-url-1",
        "foo": "bar"
    },
    "created_at": "2017-01-01T00:00:00Z",
    "updated_at": "2017-01-01T00:00:00Z"
}
```

> **Schema:** Catalog Item Object (Product)

```json
{
    "$schema": "http://json-schema.org/draft-04/schema",
    "type": "object",
    "description": "CatalogItem",
    "required": [
        "catalog",
        "images",
        "data"
    ],
    "properties": {
        "_type": {
            "type": "string",
            "readOnly": true,
            "default": "CatalogItem"
        },
        "_id": {
            "type": "string",
            "readOnly": true
        },
        "schema": {
            "type": "string",
            "readOnly": true,
            "default": "product"
        },
        "catalog": {
            "type": "object",
            "description": "Catalog",
            "properties": {
                "_type": {
                    "type": "string",
                    "readOnly": true,
                    "default": "Catalog"
                },
                "_id": {
                    "type": "string"
                },
                "name": {
                    "type": "string"
                }
            }
        },
        "images": {
            "type": "array",
            "items": {
                "type": "object",
                "description": "Image",
                "required": [
                    "uri"
                ],
                "properties": {
                    "_type": {
                        "type": "string",
                        "readOnly": true,
                        "default": "Image"
                    },
                    "_id": {
                        "type": "string",
                        "readOnly": true
                    },
                    "uri": {
                        "anyOf": [
                            {
                                "type": "string",
                                "format": "uri"
                            },
                            {
                                "type": "string",
                                "format": "byte"
                            }
                        ]
                    },
                    "thumbnail_uri": {
                        "type": "string",
                        "format": "uri",
                        "readOnly": true
                    },
                    "content_type": {
                        "type": "string",
                        "readOnly": true
                    },
                    "width": {
                        "type": "integer",
                        "minimum": 0,
                        "readOnly": true
                    },
                    "height": {
                        "type": "integer",
                        "minimum": 0,
                        "readOnly": true
                    }
                },
                "additionalProperties": false
            },
            "minItems": 1,
            "uniqueItems": true
        },
        "categories": {
            "type": "array",
            "items": {
                "type": "object",
                "description": "Category",
                "properties": {
                    "_type": {
                        "type": "string",
                        "readOnly": true,
                        "default": "Category"
                    },
                    "_id": {
                        "type": "string"
                    },
                    "name": {
                        "type": "string"
                    }
                }
            },
            "minItems": 1,
            "uniqueItems": true
        },
        "data": {
            "type": "object",
            "additionalProperties": true
        },
        "created_at": {
            "type": "string",
            "format": "date-time",
            "readOnly": true
        },
        "updated_at": {
            "type": "string",
            "format": "date-time",
            "readOnly": true
        }
    },
    "additionalProperties": false
}
```

A **Catalog Item** defines an visual object/item (e.g. product), that can be indexed and visually searched within images and videos using visual similarity - based on the associated image(s). Catalog items can be defined as different types of objects, but currently only `Product`.

Attribute 		| Type 							         | Description
------- 		| ------- 						         | -------
`_type` 		| String						         | Type. **<small>read-only</small>**
`_id` 			| String						         | An unique identifier. **<small>read-only</small>**
`catalog` 		| [Catalog](#catalog)			         | Reference to catalog containing this item.
`images` 		| [Array&lt;Image&gt;](#image)          | List of images - visual representation of this item (object).
`categories` 	| [Array&lt;Category&gt;](#category)    | List of categories - taxonomic classification of item (object).
`data` 			| Object 					             | Custom data - semantic representation of this item (object).
`created_at`	| Date    						         | Creation date/time. **<small>read-only</small>**
`updated_at`	| Date							         | Updated date/time. **<small>read-only</small>**


## <img src="images/image_icon.png" alt="image_icon" width="26px" height="auto"> Image

An **Image** defines an image per definition.

> **Example:** Image Object

```json
{
	"_type": "Image",
	"_id": "image-1",
	"uri": "https://example.com/images/1.png",
	"content_type": "image/png",
	"width": 100,
	"height": 100
}
```

> **Schema:** Image Object

```json
{
    "$schema": "http://json-schema.org/draft-04/schema",
    "type": "object",
    "description": "Image",
    "required": [
        "uri"
    ],
    "properties": {
        "_type": {
            "type": "string",
            "readOnly": true,
            "default": "Image"
        },
        "_id": {
            "type": "string",
            "readOnly": true
        },
        "uri": {
            "anyOf": [
                {
                    "type": "string",
                    "format": "uri"
                },
                {
                    "type": "string",
                    "format": "byte"
                }
            ]
        },
        "thumbnail_uri": {
            "type": "string",
            "format": "uri",
            "readOnly": true
        },
        "content_type": {
            "type": "string",
            "readOnly": true
        },
        "width": {
            "type": "integer",
            "minimum": 0,
            "readOnly": true
        },
        "height": {
            "type": "integer",
            "minimum": 0,
            "readOnly": true
        }
    },
    "additionalProperties": false
}
```

Attribute 		| Type 					| Description
------- 		| ------- 				| -------
`_type` 		| String				| Type. **<small>read-only</small>**
`_id` 			| String				| An unique identifier. **<small>read-only</small>**
`uri` 			| String				| A valid image URI.
`content_type` 	| String				| Image content type. **<small>read-only</small>**
`width` 		| Integer				| Image width in pixels. **<small>read-only</small>**
`height` 		| Integer				| Image height in pixels. **<small>read-only</small>**


## <img src="images/category_icon.png" alt="category_icon" width="26px" height="auto"> Category

An **Image** defines a category per definition.

> **Example:** Category Object

```json
{
	"_type": "Category",
    "_id": "1",
    "name": "dress"
}
```

> **Schema:** Category Object

```json
{
    "$schema": "http://json-schema.org/draft-04/schema",
    "type": "object",
    "description": "Category",
    "required": [
        "name"
    ],
    "properties": {
        "_type": {
            "type": "string",
            "readOnly": true,
            "default": "Category"
        },
        "_id": {
            "type": "string",
            "readOnly": true
        },
        "name": {
            "type": "string"
        },
        "created_at": {
            "type": "string",
            "format": "date-time",
            "readOnly": true
        },
        "updated_at": {
            "type": "string",
            "format": "date-time",
            "readOnly": true
        }
    },
    "additionalProperties": false
}
```

Attribute 		| Type 					| Description
------- 		| ------- 				| -------
`_type` 		| String				| Type. **<small>read-only</small>**
`_id` 			| String				| An unique identifier. **<small>read-only</small>**
`name` 			| String				| A custom unique name.


## <img src="images/bounding-box_icon.png" alt="bounding-box_icon" width="26px" height="auto"> Bounding Box

An **Bounding Box** defines an rectangular area (within an image) which contains a visually detected object.

> **Example:** Bounding Box Object

```json
{
	"_type": "BoundingBox",
	"_id": "1",
	"_score": 0.70,
	"_category": {
	    "_type": "Category",
	    "_id": "1",
	    "name": "dress"
	},
	"x": 0,
	"y": 0,
	"width": 10,
	"height": 10
}
```

> **Schema:** Bounding Box Object

```json
{
    "$schema": "http://json-schema.org/draft-04/schema",
    "type": "object",
    "description": "BoundingBox",
    "required": [
        "x",
        "y",
        "width",
        "height"
    ],
    "properties": {
        "_type": {
            "type": "string",
            "readOnly": true,
            "default": "BoundingBox"
        },
        "_id": {
            "type": "string",
            "readOnly": true
        },
        "_score": {
            "type": "number",
            "minimum": 0,
            "maximum": 1,
            "multipleOf": 0.01,
            "readOnly": true
        },
        "x": {
            "type": "integer",
            "minimum": 0,
            "default": 0
        },
        "y": {
            "type": "integer",
            "minimum": 0,
            "default": 0
        },
        "width": {
            "type": "integer",
            "minimum": 10
        },
        "height": {
            "type": "integer",
            "minimum": 10
        }
    },
    "additionalProperties": false
}
```

Attribute 		| Type 						| Description
------- 		| ------- 					| -------
`_type` 		| String					| Type. **<small>read-only</small>**
`_id` 			| String					| An unique identifier. **<small>read-only</small>**
`_score` 		| Float 					| Confidence score of the classification.
`_category` 	| [Category](#category) 	| Category - taxonomic classification of bounding box content (object).
`x` 			| Integer					| Bounding box offset x coordinate in pixels. **<small>read-only</small>**
`y` 			| Integer					| Bounding box offset y coordinate in pixels. **<small>read-only</small>**
`width` 		| Integer					| Bounding box offset width in pixels. **<small>read-only</small>**
`height` 		| Integer					| Bounding box offset height in pixels. **<small>read-only</small>**
