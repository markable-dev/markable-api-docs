
# Catalog Items <img src="images/catalog-items.png" alt="Catalog-items" height="auto" width="100%">

## <img src="images/catalog-items-objects_icon.png" alt="catalog-items-objects_icon" width="26px" height="auto"> The Catalog Item Object

> **Example:** Catalog Item Object

```json
{
    "_type": "Product",
    "_id": "item-1",
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
    "description": "Product",
    "required": [
        "catalog",
        "images",
        "data"
    ],
    "properties": {
        "_type": {
            "type": "string",
            "readOnly": true,
            "default": "Product"
        },
        "_id": {
            "type": "string",
            "readOnly": true
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


A **Catalog Item** (object) defines an visual item (e.g. product), that can be indexed and visually searched within images and videos using visual similarity - based on the associated image(s). Catalog items can be defined as different types of objects, but currently only `Product`. Catalog items are organized by [catalogs](#the-catalog-object).

Attribute 		| Type 							   | Description
------- 		| ------- 						   | -------
`_type` 		| String						   | Type. **<small>read-only</small>**
`_id` 			| String						   | An unique identifier. **<small>read-only</small>**
`catalog` 		| [Catalog](#catalog)			   | Reference to catalog containing this item.
`images` 		| [Array&lt;Image&gt;](#image)          | List of images - visual representation of this item (object).
`categories` 	| [Array&lt;Category&gt;](#category)    | List of categories - taxonomic classification of item (object).
`data` 			| Object 					       | Custom data - semantic representation of this item (object).
`created_at`	| Date    						   | Creation date/time. **<small>read-only</small>**
`updated_at`	| Date							   | Updated date/time. **<small>read-only</small>**
