
# Objects

The object defintions to be aware of when working with **Markable Lens API**.

## <img src="images/catalog_icon.png" alt="catalog_icon" width="26px" height="auto"> Catalog

> **Example:** Catalog Object

```json
{
    "_type": "Catalog",
    "_id": "catalog_id_1"
    "schema": "product",
    "size": 0,
    "updated_at": "2019-03-07T22:06:51.885Z",
    "name": "catalog-1",
    "description": "my_first_catalog",
    "created_at": "2019-03-07T22:06:51.859Z",
    "access": "public",
    "user": {
        "_type": "User",
        "_id": "user_id_1"
    }, 
}
```

> **Schema:** Catalog Object

```json
{
    "title": "Catalog",
    "description": "A markable API catalog",
    "type": "object",
    "required": [
        "schema",
        "name",
        "user"
    ],
    "additionalProperties": false,
    "properties": {
        "_type": {
            "type": "string",
            "default": "Catalog",
            "readOnly": true
        },
        "meta": {
            "title": "Meta Information",
            "description": "Meta data for model",
            "type": "object"
        },
        "_id": {
            "title": "ID",
            "description": "Primary key",
            "type": "string"
        },
        "schema": {
            "title": "Schema",
            "description": "Determines type of catalog",
            "type": "string",
            "enum": [
                "product",
                "style"
            ]
        },
        "name": {
            "title": "Catalog name",
            "description": "Catalog name without spaces",
            "type": "string",
            "pattern": "^[a-zA-Z0-9_-]{4,}$"
        },
        "description": {
            "title": "Catalog description",
            "description": "Description of the catalog",
            "type": "string"
        },
        "access": {
            "title": "Catalog Access",
            "description": "Accessibility option of catalog",
            "type": "string",
            "enum": [
                "public",
                "private"
            ],
            "default": "private"
        },
        "priority": {
            "title": "Indexing priority",
            "type": "integer",
            "description": "Indexing priority of catalog",
            "default": 0
        },
        "enabled": {
            "title": "",
            "type": "boolean",
            "description": "",
            "default": true
        },
        "user": {
            "title": "User",
            "description": "User account that created catalog",
            "type": "object",
            "required": [
                "_id"
            ],
            "properties": {
                "_id": {
                    "title": "ID",
                    "description": "User ID",
                    "readOnly": true
                }
            }
        },
        "size": {
            "title": "Size",
            "description": "Catalog Size",
            "type": "integer"
        },
        "status": {
            "title": "Indexing Status",
            "description": "catalog indexing status",
            "type": "string",
            "enum": [
                "cv_active",
                "nn_active",
                "cv_pending",
                "nn_pending",
                "hold",
                "successful"
            ]
        },
        "error": {
            "title": "Error",
            "description": "Indexing errors",
            "type": "string",
            "default": null
        },
        "created_at": {
            "title": "Created At",
            "description": "Catalog created at timestamp",
            "type": "string",
            "format": "date-time"
        },
        "updated_at": {
            "title": "Updated At",
            "description": "Catalog updated at timestamp",
            "type": "string",
            "format": "date-time"
        },
        "deleted_at": {
            "title": "Deleted At",
            "description": "Catalog deleted at timestamp",
            "type": [
                "string",
                "null"
            ],
            "format": "date-time"
        },
        "indexing_started_at": {
            "title": "Indexing started at",
            "description": "Catalog indexing start timestamp",
            "type": "object",
            "properties": {
                "cv": {
                    "title": "cv indexing started at",
                    "description": "time cv indexing started",
                    "type": [
                        "string",
                        "null"
                    ],
                    "format": "date-time"
                },
                "nn": {
                    "title": "nn indexing started at",
                    "description": "time nn indexing start",
                    "type": [
                        "string",
                        "null"
                    ],
                    "format": "date-time"
                }
            }
        },
        "indexing_ended_at": {
            "title": "Indexing ended at",
            "description": "Catalog indexing end timestamp",
            "type": "object",
            "properties": {
                "cv": {
                    "title": "cv indexing ended at",
                    "description": "time cv indexing ended",
                    "type": [
                        "string",
                        "null"
                    ],
                    "format": "date-time"
                },
                "nn": {
                    "title": "nn indexing ended at",
                    "description": "time nn indexing ended",
                    "type": [
                        "string",
                        "null"
                    ],
                    "format": "date-time"
                }
            }
        }
    }
}
```

A **Catalog** defines a catalog/group of visual objects/items (e.g. products), that can be indexed and visually searched within images and videos using visual similarity - based on the associated image(s). For us to be able to find what you looking for in your images/videos, the items (exact or similar) must be known to **Markable**'s visual search engine, either using existing catalogs or custom defined catalogs.

Attribute       | Type          | Description
-------         | ----------    | -------
| **`_type`**   | `string`      | Object type 
| **`meta`**    | `object`      | Meta Information 
| **`_id`**     | `string`      | A unique identifier
| **`schema`**  | `string`      | The schema used for catalog's items: <br>`product` or `style`
| **`name`**    | `string`      | A custom name for the catalog   
| **`description`** | `string`  | A custom description
| **`access`**  | `string`      | Catalog accecssibility: <br>`public` or `private`
| **`priority`** | `integer`    | Indexing queue priority 
| **`enabled`** | `boolean`     | Catalog indexing flag 
| **`user`**    | `object`      | Catalog owner reference
| **`size`**    | `integer`     | Number or items in catalog
| **`status`**  | `string`      | Catalog indexing status 
| **`error`**   | `string`      | Indexing Errors
| **`created_at`** | `string (date-time)`   | Creation of date/time.
| **`updated_at`** | `string (date-time)`   | Updated date/time
| **`deleted_at`** | `string (date-time)` | Deleted date/time
| **`indexing_started_at`** | `object`  | Indexing operation start date/time 
| **`indexing_ended_at`** | `object`    | Indexing oepration end date/time  


## <img src="images/catalog-item_icon.png" alt="catalog-item_icon" width="26px" height="auto"> Catalog Item

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
        "stock": true,
        "name": "product name",
        "gender": "women",
        "price": 200,
        "brand": "new brand",
        "vendor": "new vendor",
        "country": "US",
        "sku": "2153608405:sweaters",
        "url": "https://productpage.com",
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
                        "men",
                        "women",
                        "unisex"
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
                "url"
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

A **Catalog Item** defines an visual object/item (e.g. product), that can be indexed and visually searched within images and videos using visual similarity - based on the associated image(s).

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
