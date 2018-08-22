
# Catalog Items <img src="images/catalog-items.png" alt="Catalog-items" height="auto" width="90%" align="center">

## <img src="images/catalog-items-objects_icon.png" alt="catalog-items-objects_icon" width="26px" height="auto"> The Catalog Item Object

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
            "_type": "CatalogItem",
            "_id": "1",
            "schema": "product",
            "uri": "https://markable.ai/data/products/dress/1.png",
            "width": 100,
            "height": 100
        },
        {
            "_type": "Image",
            "_id": "2",
            "uri": "https://markable.ai/data/products/dress/2.png",
            "width": 100,
            "height": 100
        }
    ],
    "category": {
        "_type": "Category",
        "_id": "1",
        "name": "dress"
    },
    "data": {
        "url": "https://example.com/product/page.html",
        "id": "external-id-1",
        "foo": "bar",
        "name" : "A great awesome product",
        "brand" : "Brand",
        "color" : "green",
        "gender" : "women",
        "vendor" : "vendor",
        "stock" : true,
        "price" : 30,
        "currency" : "USD"
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
                    "status": {
                        "enum": ["pending", "error", "success"]
                    },
                    "error": {
                        "type": ["object", "null"]
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
        "category": {
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
        "data": {
            "type": "object",
            "properties": {
                "url": {
                    "type": "string",
                },
                "gender": {
                    "enum": ["men", "women", "unisex"],
                    "default": "women"
                },
                "name": {
                    "type": "string",
                },
                "id": {
                    "type": "string"
                },
                "sku": {
                    "type": "string"
                },
                "vendor": {
                    "type": "string"
                },
                "brand": {
                    "type": "string"
                },
                "price": {
                    "type": "number"
                },
                "currency": {
                    "type": "string"
                },
                "color": {
                    "type": "string"
                },
                "description": {
                    "type": "string"
                }
            },
            "additionalProperties": true,
            "required": ["url"]
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

Note

* Use the `data` key below to add free form information about the CatalogItem.
* `data.url` is required since we want to the know product URL to redirect the user.
* `data` also supports optional fields like `gender`, `brand`, `color`, `vendor` & `sku`.

Attribute 		| Type 							   | Description
------- 		| ------- 						   | -------
`_type` 		| String						   | Type. **<small>read-only</small>**
`_id` 			| String						   | An unique identifier. **<small>read-only</small>**
`catalog` 		| [Catalog](#catalog)			   | Reference to catalog containing this item.
`images` 		| [Array&lt;Image&gt;](#image)          | List of images - visual representation of this item (object).
`category` 	| [Category](#category)    | Category - taxonomic classification of item (object).
`data` 			| Object 					       | Custom data - semantic representation of this item (object).
`created_at`	| Date    						   | Creation date/time. **<small>read-only</small>**
`updated_at`	| Date							   | Updated date/time. **<small>read-only</small>**

