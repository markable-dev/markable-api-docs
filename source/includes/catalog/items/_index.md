
# Catalog Items <img src="images/catalog-items.png" alt="Catalog-items" height="auto" width="90%" align="center">

## <img src="images/catalog-items-objects_icon.png" alt="catalog-items-objects_icon" width="26px" height="auto"> The Catalog Item Object

> **Example:** Catalog Item Object

```json
{
    "_id": "catalogitem-1",
    "images": [
        {
            "uri": "https://image_url_1.jpg",
            "_type": "Image",
            "status": "pending",
            "error": null
        },
        {
            "uri": "https://image_url_2.jpg",
            "_type": "Image",
            "status": "pending",
            "error": null
        },
    ],
    "data": {
        "url": "https://productpage.com",
        "gender": "female",
        "age_group": "adults",
        "stock": true,
        "name": "product name",
        "price": 200,
        "brand": "new brand",
        "vendor": "new vendor",
        "country": "US",
        "sku": "2153608405:sweaters",
        "category": "sweaters",
    },
    "category": {
        "name": "sweaters",
        "id": "sweaters"
    },
    "_type": "CatalogItem",
    "created_at": "2019-03-11T20:41:35.105Z",
    "updated_at": "2019-03-11T20:41:35.106Z",
    "status": "cv_pending",
    "catalog": {
        "_type": "Catalog",
        "_id": "1",
        "name": "catalog-1"
    },
    "schema": "product",
    "fingerprint": "580498c0f46e206f13a8ed8ebfb3595a"
}
```

> **Schema:** Catalog Item Object (Product)

```json
{
    "title": "Catalog Item",
    "description": "A markable API product catalog item",
    "type": "object",
    "properties": {
        "meta": {
            "title": "Meta Information",
            "description": "Meta data for model",
            "type": "object"
        },
        "_type": {
            "type": "string",
            "default": "CatalogItem"
        },
        "_id": {
            "title": "ID",
            "description": "Primary key",
            "type": "string"
        },
        "fingerprint": {
            "title": "Fingerprint",
            "description": "Unique catalaog item hash",
            "type": "string"
        },
        "schema": {
            "title": "Schema",
            "description": "Determines type of catalog",
            "type": "string",
            "enum": [
                "product",
                "style"
            ],
            "default": "product"
        },
        "schema_version": {
            "title": "Schema Version",
            "description": "Version",
            "type": "string",
            "default": "null"
        },
        "catalog": {
            "title": "Catalog",
            "description": "Catalog to which item belogs to",
            "type": "object",
            "properties": {
                "_type": {
                    "type": "string",
                    "default": "Catalog"
                },
                "_id": {
                    "title": "ID",
                    "description": "Catalog ID"
                },
                "name": {
                    "title": "Name",
                    "description": "Catalog name",
                    "type": "string"
                }
            },
            "required": [
                "_id",
                "name"
            ]
        },
        "images": {
            "title": "Images",
            "description": "Images in catalog item",
            "type": "array",
            "minItems": 1,
            "maxItems": 100,
            "uniqueItems": true,
            "items": {
                "$ref": "#/definitions/image"
            }
        },
        "category": {
            "title": "Category",
            "description": "Catalog Item Category",
            "type": [
                "string",
                "null"
            ],
            "default": "null"
        },
        "attributes": {
            "title": "Attributes",
            "description": "Catalog Item Attributes",
            "type": [
                "object",
                "null"
            ]
        },
        "data": {
            "title": "Data",
            "description": "Catalog item data properties",
            "type": "object",
            "properties": {
                "id": {
                    "title": "ID",
                    "description": "Catalog Item ID",
                    "type": "string"
                },
                "url": {
                    "title": "URL",
                    "description": "Catalog Item URL",
                    "type": "string",
                    "pattern": "^(http://?|https://?|wss://?|ftp://|data:image?)"
                },
                "sku": {
                    "title": "SKU",
                    "description": "Catalog Item Stock Keeping Unit",
                    "type": "string"
                },
                "description": {
                    "title": "Description",
                    "description": "Catalog Item Description",
                    "type": "string"
                },
                "name": {
                    "title": "Name",
                    "description": "Catalog Item Name",
                    "type": "string"
                },
                "brand": {
                    "title": "Brand",
                    "description": "Catalog Item Brand",
                    "type": "string"
                },
                "vendor": {
                    "title": "Vendor",
                    "description": "Catalog Item Vendor",
                    "type": "string"
                },
                "category": {
                    "title": "Category",
                    "description": "Normalized Catalog Item Category",
                    "type": "string"
                },
                "gender": {
                    "title": "Gender",
                    "description": "Catalog Item Gender",
                    "enum": [
                        "male",
                        "female",
                        "unisex"
                    ]
                },
                "age_group": {
                    "title": "Gender",
                    "description": "Catalog Item Gender",
                    "enum": [
                        "children",
                        "adults",
                        "toddlers"
                    ]
                },
                "color": {
                    "title": "Color",
                    "description": "Catalog Item Color",
                    "type": "string"
                },
                "price": {
                    "title": "Price",
                    "description": "Catalog Item Price",
                    "type": "number"
                },
                "currency": {
                    "title": "Currency",
                    "description": "Catalog Item Currency",
                    "type": "string",
                    "default": "USD"
                }
            },
            "required": [
                "url", 
                "gender",
                "age_group"
            ],
            "additionalProperties": true
        },
        "status": {
            "title": "Status",
            "description": "Catalog Item Indexing Status",
            "type": "string",
            "enum": [
                "cv_pending",
                "nn_pending",
                "successful",
                "nodetections",
                "failed"
            ]
        },
        "error": {
            "title": "Error",
            "description": "Errors produced during indexing",
            "type": "object",
            "default": "null"
        },
        "failed_count": {
            "title": "Data",
            "description": "Catalog item data properties",
            "type": "object",
            "properties": {
                "cv": {
                    "type": "integer",
                    "default": 0
                },
                "nn": {
                    "type": "integer",
                    "default": 0
                }
            }
        },
        "created_at": {
            "title": "Created At",
            "description": "Catalog Item created at timestamp",
            "type": "string",
            "format": "date-time"
        },
        "updated_at": {
            "title": "Updated At",
            "description": "Catalog Item updated timestamp",
            "type": "string",
            "format": "date-time"
        },
        "indexed_started_at": {
            "title": "Indexed Start At",
            "description": "Catalog Item indexing start timestamp",
            "type": "object",
            "properties": {
                "cv": {
                    "type": "string",
                    "format": "date-time"
                },
                "nn": {
                    "type": "string",
                    "format": "date-time"
                }
            }
        },
        "indexed_ended_at": {
            "title": "Indexed End At",
            "description": "Catalog item indexing end timestamp",
            "type": "object",
            "properties": {
                "cv": {
                    "type": "string",
                    "format": "date-time"
                },
                "nn": {
                    "type": "string",
                    "format": "date-time"
                }
            }
        }
    },
    "additionalProperties": false,
    "if": {
        "properties": {
            "schema": {
                "enum": [
                    "product"
                ]
            }
        },
        "required": [
            "schema"
        ]
    },
    "then": {
        "required": [
            "category",
            "images",
            "data"
        ]
    },
    "else": {
        "required": [
            "images",
            "data"
        ]
    },
    "definitions": {
        "image": {
            "title": "Image",
            "description": "Image",
            "type": "object",
            "properties": {
                "_type": {
                    "type": "string",
                    "default": "Image"
                },
                "_id": {
                    "title": "Upload ID",
                    "type": "string"
                },
                "hash": {
                    "title": "Hash",
                    "description": "Unique image hash",
                    "type": "string"
                },
                "uri": {
                    "title": "URI",
                    "description": "Image URI",
                    "type": "string",
                    "pattern": "^(http://?|https://?|wss://?|ftp://|data:image?)"
                },
                "width": {
                    "title": "Width",
                    "description": "Image width",
                    "type": [
                        "number",
                        "null"
                    ],
                    "default": null,
                    "minimum": 0
                },
                "height": {
                    "title": "Height",
                    "description": "Image height",
                    "type": [
                        "number",
                        "null"
                    ],
                    "default": null,
                    "minimum": 0
                },
                "thumbnail": {
                    "title": "Thumbnail",
                    "description": "Thumbnail Upload",
                    "type": "object",
                    "properties": {
                        "uri": {
                            "title": "Thumbnail URI",
                            "type": "string",
                            "pattern": "^(http://?|https://?)"
                        },
                        "width": {
                            "title": "Width",
                            "description": "Image width",
                            "type": [
                                "number",
                                "null"
                            ],
                            "default": null,
                            "minimum": 0
                        },
                        "height": {
                            "title": "Height",
                            "description": "Image height",
                            "type": [
                                "number",
                                "null"
                            ],
                            "default": null,
                            "minimum": 0
                        }
                    }
                },
                "snapshot": {
                    "title": "Snapshot",
                    "type": "object",
                    "properties": {
                        "uri": {
                            "title": "URI",
                            "type": "string",
                            "pattern": "^(http://?|https://?)"
                        },
                        "path": {
                            "title": "Path",
                            "type": "string",
                            "pattern": "^file://"
                        }
                    }
                },
                "status": {
                    "title": "Image Indexing Status",
                    "type": "string",
                    "enum": [
                        "pending",
                        "error",
                        "success"
                    ]
                },
                "error": {
                    "title": "Error",
                    "description": "Indexing errors",
                    "type": [
                        "object",
                        "null"
                    ]
                },
                "stats": {
                    "title": "Statistics",
                    "description": "Image processing statistics",
                    "type": "object"
                },
                "model": {
                    "title": "Model",
                    "description": "Image model used in detection",
                    "type": "string"
                },
                "detections": {
                    "title": "Detections",
                    "description": "Image cv detections",
                    "type": "array",
                    "items": {
                        "$ref": "#/definitions/detection"
                    }
                }
            },
            "required": [
                "uri"
            ],
            "additionalProperties": false
        },
        "detection": {
            "title": "Detection",
            "description": "Detected item",
            "type": "object",
            "properties": {
                "_id": {
                    "title": "ID",
                    "description": "Detection ID",
                    "type": "string"
                },
                "bounding_box": {
                    "title": "Bounding Box",
                    "description": "Detection bounding box specifications",
                    "type": "object",
                    "properties": {
                        "x": {
                            "title": "X-coordinate",
                            "description": "bounding box x coordinate",
                            "type": "integer"
                        },
                        "y": {
                            "title": "Y-coordinate",
                            "description": "bounding box y coordinate",
                            "type": "integer"
                        },
                        "width": {
                            "title": "Width",
                            "description": "bounding box width",
                            "type": "integer"
                        },
                        "height": {
                            "title": "Height",
                            "description": "bounding box height",
                            "type": "integer"
                        }
                    },
                    "required": [
                        "x",
                        "y",
                        "width",
                        "height"
                    ],
                    "additionalProperties": false
                },
                "category": {
                    "title": "Category",
                    "description": "Detected category",
                    "type": "string"
                },
                "score": {
                    "title": "Score",
                    "description": "Detection confidence",
                    "type": "number",
                    "minimum": 0,
                    "maximum": 1
                },
                "attributes": {
                    "title": "Attributes",
                    "description": "Detection attributes",
                    "type": "array",
                    "items": {
                        "$ref": "#/definitions/attribute"
                    }
                },
                "feature": {
                    "type": "object",
                    "title": "Feature Vector",
                    "description": "Detection Feature Vectors",
                    "properties": {
                        "hash": {
                            "title": "Hash",
                            "description": "MD5 Hash of Feature Vectors",
                            "type": "string",
                            "minLength": 32
                        },
                        "vector": {
                            "title": "Vector",
                            "description": "Detection Feature Vectors",
                            "type": "array",
                            "minLength": 128,
                            "maxItems": 128
                        }
                    },
                    "required": [
                        "hash",
                        "vector"
                    ]
                }
            },
            "required": [
                "bounding_box",
                "category",
                "score",
                "feature"
            ],
            "additionalProperties": false
        },
        "attribute": {
            "title": "Attribute",
            "description": "Detection Attribute Type",
            "type": "object",
            "properties": {
                "name": {
                    "title": "Name",
                    "description": "Attribute Name",
                    "type": "string",
                    "minLength": 1
                },
                "values": {
                    "title": "Values",
                    "description": "Attribute Values",
                    "type": "array",
                    "items": {
                        "title": "Value",
                        "description": "Label and Score",
                        "type": "object",
                        "properties": {
                            "value": {
                                "title": "Value",
                                "description": "Attribute Value Label",
                                "type": "string",
                                "minLength": 1
                            },
                            "score": {
                                "title": "Score",
                                "description": "Attribute Confidence Score",
                                "type": "number",
                                "minimum": 0,
                                "maximum": 1
                            }
                        }
                    }
                }
            },
            "required": [
                "name",
                "value",
                "score"
            ],
            "additionalProperties": false
        }
    }
}
```


A **Catalog Item** (object) defines an visual item (e.g. product), that can be indexed and visually searched within images and videos using visual similarity - based on the associated image(s). Catalog items can be defined as different either `Product` or `Style`. Catalog items are organized by [catalogs](#the-catalog-object).

Note

* Internally, the uniqueness of a catalogItem depends on the imageURL(s), gender and the markable category (fingerprint).
* Use the `data` key below to add free form information about the CatalogItem.
* `data.url`, `data.gender`, `data.age_group`, is required.
* `data` also supports optional fields like `brand`, `color`, `vendor` & `sku`.

Attribute       | Type          | Description
-------         | ----------    | -------
| **`_type`**   | `string`      | Object type 
| **`meta`**    | `object`      | Meta Information 
| **`_id`**     | `string`      | A unique identifier
| **`fingerprint`** |`string`     | Unique catalog item hash 
| **`schema`**  | `string`      | The schema used for catalog's items: <br>`product` or `style`
| **`schema_version`** |`string` | Schema Version Tag
| **`catalog`** |`object` | Catalog reference
| **`images`**  |`array` | Visual representation of this item
| **`category`** |`string` | Taxonomic classification of item 
| **`data`** |`object` | Custom - semantic representation of item
| **`status`** |`string` | Indexing status of item <br> `cv_pending`, `nn_pending`, `successful`, `nodetections`, `failed`
| **`error`** |`object` | Errors produced during indexing operations
| **`failed_count`** |`object` | Count of failures during indexing operations
| **`created_at`** |`string (date-time)` | Creation date/time
| **`updated_at`** |`string (date-time)` | Updated date/time
| **`indexing_started_at`** | `object`  | Indexing operation start date/time 
| **`indexing_ended_at`** | `object`    | Indexing oepration end date/time  
