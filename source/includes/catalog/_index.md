
# Catalogs <img src="images/catalog.png" alt="Catalogs" height="auto" width="100%">

## <img src="images/catalog_icon.png" alt="catalog_icon" width="26px" height="auto"> The Catalog Object


A **Catalog** (object) defines a catalog/group of visual items (e.g. products), that can be indexed and visually searched within images and videos using visual similarity - based on the associated image(s). For us to be able to find what you looking for in your images/vides the items (exact or similar) must be known to **Markable**'s visual search engine, either using existing catalogs or your customly defined catalogs.

Catalogs can be of two different schemas; `product` and `style`. 


## Product Catalogs

Product catalogs are a reflection of a list of products sold online in a retail store for example. Each [CatalogItem](#catalog-items) in a product catalog beside images, have a `category`, a `url` that you can find the product in and `gender` associated with it.

## Style Catalogs

Style catalogs, however, are free form catalogs with just `images` and a designated `gender`. Style catalogs are a list of street images


> **Example:** Catalog Object

```json
{
    "_type": "Catalog",
    "schema": "product",
    "_id": "catalog-id-1",
    "size": 5,
    "name": "catalog-name-1",
    "description": "My first catalog",
    "created_at": "2017-01-01T00:00:00Z",
    "updated_at": "2017-01-01T00:00:00Z"
}
```

```json
{
    "_type": "Catalog",
    "schema": "style",
    "_id": "catalog-id-2",
    "size": 10,
    "name": "catalog-name-2",
    "description": "My first style catalog",
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
            "readOnly": true,
            "description": "The number of items in this catalog"
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
            "enum": ["product", "style"],
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


Attribute 		| Type 			| Description
------- 		| ----------	| -------
`_type` 		| String		| Type. **<small>read-only</small>**
`_id` 			| String  		| A unique identifier. **<small>read-only</small>**
`size`          | Integer 		| Number or items in this catalog. **<small>read-only</small>**
`name` 			| String  		| A custom unique name.
`description`	| String 		| A custom description.
`schema`		| String  		| The schema to be used for this catalog's items. <br>Can be: `product` or `style`.
`created_at`	| Date    		| Creation date/time. **<small>read-only</small>**
`updated_at`	| Date			| Updated date/time. **<small>read-only</small>**
