
# Catalogs <img src="images/catalog.png" alt="Catalogs" height="auto" width="100%">

## <img src="images/catalog_icon.png" alt="catalog_icon" width="26px" height="auto"> The Catalog Object


A **Catalog** (object) defines a catalog/group of visual items (e.g. products), that can be indexed and visually searched within images and videos using visual similarity - based on the associated image(s). For us to be able to find what you looking for in your images/videos the items (exact or similar) must be known to **Markable**'s visual search engine, either using existing catalogs or your customly defined catalogs.

Catalogs can be of two different schemas: `product` and `style`.


## Product Catalogs

Product catalogs can be a list of products sold online in a retail store. Each [CatalogItem](#catalog-items) in the catalog contains `images`, `category`, a `url` that links to the product at the store, and `gender` associated associated with the item, e.g, `men`, `women`, `unisex`.

## Style Catalogs

Style catalogs, however, are free form catalogs with just `images` and a designated `gender`. Style catalogs for example, can be comprised of a list of street images.


> **Example:** Catalog Object

```json
{
    "_type": "Catalog",
    "_id": "catalog_id_1",
    "schema": "product",
    "name": "catalog_name_1",
    "description": "My product catalog",
    "size": 5,
    "access": "public",
    "created_at": "2018-12-06T22:11:51.391Z",
    "updated_at": "2019-03-09T03:09:17.309Z",
    "user": {
        "_type": "User",
        "_id": "user_id_1"
    },
},
```

```json
{
    "_type": "Catalog",
    "_id": "catalog_id_2",
    "schema": "style",
    "name": "catalog_name_2",
    "description": "My style catalog",
    "size": 10,
    "access": "public",
    "created_at": "2018-12-06T22:11:51.391Z",
    "updated_at": "2019-03-09T03:09:17.309Z",
    "user": {
        "_type": "User",
        "_id": "user_id_1"
    },
},
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
