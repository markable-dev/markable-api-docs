
# Catalogs <img src="images/catalog.png" alt="Catalogs" height="auto" width="100%">

## <img src="images/catalog_icon.png" alt="catalog_icon" width="26px" height="auto"> The Catalog Object

> **Example:** Catalog Object

```json
{
    "_type": "Catalog",
    "_id": "1",
    "_size": 5,
    "name": "catalog-1",
    "description": "My first catalog",
    "schema": "Product",
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
        "_size": {
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
                "Face",
                "Logo",
                "Product"
            ],
            "default": "Product"
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


A **Catalog** (object) defines a catalog/group of visual items (e.g. products), that can be indexed and visually searched within images and videos using visual similarity - based on the associated image(s). For us to be able to find what you looking for in your images/vides the items (exact or similar) must be known to **Markable**'s visual search engine, either using existing catalogs or your customly defined catalogs.

Attribute 		| Type 			| Description
------- 		| ----------	| -------
`_type` 		| String		| Type. **<small>read-only</small>**
`_id` 			| String  		| A unique identifier. **<small>read-only</small>**
`_size` 		| Integer 		| Number or items in this catalog. **<small>read-only</small>**
`name` 			| String  		| A custom unique name.
`description`	| String 		| A custom description.
`schema`		| String  		| The schema to be used for this catalog's items. <br>Can be: `Product`.
`created_at`	| Date    		| Creation date/time. **<small>read-only</small>**
`updated_at`	| Date			| Updated date/time. **<small>read-only</small>**