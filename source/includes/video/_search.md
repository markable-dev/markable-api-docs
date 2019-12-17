
## <img src="images/search-video_icon.png" alt="search-video_icon" width="28px" height="auto"> Search

> **Example:** Request

```http
POST http://video.markable.ai/video/search?page=0&pageLimit=2 HTTP/1.1
Authorization: Bearer 123abc
{
	"data": {
        "uri": "https://example.com/videos/1.mp4",
    }
}
```

> **Example:** Request Force Options

```http
POST http://video.markable.ai/video/search?page=0&pageLimit=2 HTTP/1.1
Authorization: Bearer 123abc
{
    "data": {
        "uri": "https://example.com/videos/1.mp4",
        "force": true
    }
}
```


> **Example:** Request Refresh Options

```http
POST http://video.markable.ai/video/search?page=0&pageLimit=2 HTTP/1.1
Authorization: Bearer 123abc
{
    "data": {
        "uri": "https://example.com/videos/1.mp4",
        "refresh": true
    }
}
```


```shell
curl -X POST http://video.markable.ai/video/search?page=0&pageLimit=2 \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer 123abc' \
-d '
{
	"data": {
        "uri": "https://example.com/videos/1.mp4",
    }
}
'
```

> **Example:** Response - Pending Indexing, Force, Or Refresh

```json
{
    "meta": {
        "service": {
            "name": "markable-video-service",
            "version": "2.0.0-alpha+01",
            "environment": "default"
        },
        "request": {
            "protocol": "http",
            "method": "POST",
            "url": "/video/search?page=2",
            "route": "/video/search",
            "params": {},
            "query": {
                "page": "2"
            }
        },
        "exists": {
            "configure": true,
            "meta": true,
            "download": true,
            "snapshot": true,
            "publish": false,
            "cv": true,
            "nn": true,
            "db": true,
            "map": true,
            "store": true
        },
        "status": "pending",
        "state": {
            "configure": {
                "started": true,
                "ended": true,
                "succeeded": true,
                "failed": false
            },
            "meta": {
                "started": true,
                "ended": true,
                "succeeded": true,
                "failed": false
            },
            "download": {
                "started": true,
                "ended": true,
                "succeeded": true,
                "failed": false
            },
            "snapshot": {
                "started": true,
                "ended": true,
                "succeeded": true,
                "failed": false
            },
            "publish": {
                "started": false,
                "ended": false,
                "succeeded": false,
                "failed": false
            },
            "cv": {
                "started": true,
                "ended": true,
                "succeeded": true,
                "failed": false
            },
            "nn": {
                "started": true,
                "ended": true,
                "succeeded": true,
                "failed": false
            },
            "db": {
                "started": true,
                "ended": true,
                "succeeded": true,
                "failed": false
            },
            "map": {
                "started": true,
                "ended": true,
                "succeeded": true,
                "failed": false
            },
            "store": {
                "started": true,
                "ended": true,
                "succeeded": true,
                "failed": false
            }
        },
        "enqueued": true,
        "pagination": {
            "page": 2,
            "pageBy": "index",
            "pageLimit": 5,
            "pageFrom": 10,
            "pageTo": 15,
            "pageSize": 5
        },
        "statuses": [
            {
                "step": "config",
                "unit": "configurations",
                "errors": [],
                "completed": 1,
                "total": 1,
                "startedAt": 1576612942669,
                "endedAt": 1576612942857,
                "elapsedTime": 188,
                "totalTime": 188,
                "eachTime": 188,
                "rate": 5.319148936170213,
                "status": 1
            },
            {
                "step": "meta",
                "unit": "metas",
                "errors": [],
                "completed": 1,
                "total": 1,
                "startedAt": 1576612942880,
                "endedAt": 1576612944127,
                "elapsedTime": 1247,
                "totalTime": 1247,
                "eachTime": 1247,
                "rate": 0.8019246190858058,
                "status": 1
            },
            {
                "step": "download",
                "unit": "bytes",
                "errors": [],
                "completed": 2323481,
                "total": 2323481,
                "startedAt": 1576612944126,
                "endedAt": 1576612944395,
                "elapsedTime": 269,
                "totalTime": 269,
                "eachTime": 0.00011577456411307,
                "rate": 8637475.836431226,
                "status": 1
            },
            {
                "step": "snapshot",
                "unit": "frames",
                "errors": [],
                "completed": 139,
                "total": 139,
                "startedAt": 1576612944414,
                "endedAt": 1576612950222,
                "elapsedTime": 5808,
                "totalTime": 5808,
                "eachTime": 41.78417266187051,
                "rate": 23.93250688705234,
                "status": 1
            },
            {
                "step": "cv",
                "unit": "frames",
                "errors": [],
                "completed": 139,
                "total": 139,
                "startedAt": 1576612984881,
                "endedAt": 1576613082815,
                "elapsedTime": 97934,
                "totalTime": 97934,
                "eachTime": 704.5611510791367,
                "rate": 1.4193232176772113,
                "status": 1
            },
            {
                "step": "nn",
                "unit": "frames",
                "errors": [],
                "completed": 139,
                "total": 139,
                "startedAt": 1576613081082,
                "endedAt": 1576613266125,
                "elapsedTime": 185043,
                "totalTime": 185043,
                "eachTime": 1331.2446043165467,
                "rate": 0.7511767535113459,
                "status": 1
            },
            {
                "step": "db",
                "unit": "frames",
                "errors": [],
                "completed": 139,
                "total": 139,
                "startedAt": 1576613081094,
                "endedAt": 1576613271699,
                "elapsedTime": 190605,
                "totalTime": 190605,
                "eachTime": 1371.2589928057555,
                "rate": 0.7292568400619082,
                "status": 1
            },
            {
                "step": "map",
                "unit": "frames",
                "errors": [],
                "completed": 139,
                "total": 139,
                "startedAt": 1576613081115,
                "endedAt": 1576613271811,
                "elapsedTime": 190696,
                "totalTime": 190696,
                "eachTime": 1371.913669064748,
                "rate": 0.7289088391995637,
                "status": 1
            },
            {
                "step": "store",
                "unit": "frames",
                "errors": [],
                "completed": 139,
                "total": 139,
                "startedAt": 1576613081121,
                "endedAt": 1576613271812,
                "elapsedTime": 190691,
                "totalTime": 190691,
                "eachTime": 1371.8776978417266,
                "rate": 0.7289279515026929,
                "status": 1
            }
        ],
        "job": {
            "uri": "https://video_1.m4v",
            "refresh": true,
            "options": {
                "page": "2",
                "legacy": true
            },
            "id": "8b03244a15ff3a2073befe93f93d9094"
        },
        "jobs": {
            "pending": [],
            "successful": [],
            "failed": []
        }
    },
    "data": null
}
```

> **Example:** Response - Fully indexed video with product results

```json
{
    "meta": {
        "service": {
            "name": "markable-video-service",
            "version": "2.0.0-alpha+01",
            "environment": "default"
        },
        "request": {
            "protocol": "http",
            "method": "POST",
            "url": "/video/search?page=0&pageLimit=2",
            "route": "/video/search",
            "params": {},
            "query": {
                "page": "0",
                "pageLimit": "2"
            }
        },
        "exists": {
            "configure": true,
            "meta": true,
            "download": true,
            "snapshot": true,
            "publish": false,
            "cv": true,
            "nn": true,
            "db": true,
            "map": true,
            "store": true
        },
        "status": "complete",
        "state": {
            "configure": {
                "started": true,
                "ended": true,
                "succeeded": true,
                "failed": false
            },
            "meta": {
                "started": true,
                "ended": true,
                "succeeded": true,
                "failed": false
            },
            "download": {
                "started": true,
                "ended": true,
                "succeeded": true,
                "failed": false
            },
            "snapshot": {
                "started": true,
                "ended": true,
                "succeeded": true,
                "failed": false
            },
            "publish": {
                "started": false,
                "ended": false,
                "succeeded": false,
                "failed": false
            },
            "cv": {
                "started": true,
                "ended": true,
                "succeeded": true,
                "failed": false
            },
            "nn": {
                "started": true,
                "ended": false,
                "succeeded": false,
                "failed": false
            },
            "db": {
                "started": true,
                "ended": false,
                "succeeded": false,
                "failed": false
            },
            "map": {
                "started": true,
                "ended": false,
                "succeeded": false,
                "failed": false
            },
            "store": {
                "started": true,
                "ended": false,
                "succeeded": false,
                "failed": false
            }
        },
        "enqueued": false,
        "pagination": {
            "page": 0,
            "pageBy": "index",
            "pageLimit": 2,
            "pageFrom": 0,
            "pageTo": 2,
            "pageSize": 2
        },
        "statuses": [
            {
                "step": "config",
                "unit": "configurations",
                "errors": [],
                "completed": 1,
                "total": 1,
                "startedAt": 1576535995185,
                "endedAt": 1576536908363,
                "elapsedTime": 913178,
                "totalTime": 913178,
                "eachTime": 913178,
                "rate": 0.001095076753929683,
                "status": 1
            },
            {
                "step": "meta",
                "unit": "metas",
                "errors": [],
                "completed": 1,
                "total": 1,
                "startedAt": 1576535995256,
                "endedAt": 1576536908386,
                "elapsedTime": 913130,
                "totalTime": 913130,
                "eachTime": 913130,
                "rate": 0.0010951343182241302,
                "status": 1
            },
            {
                "step": "download",
                "unit": "bytes",
                "errors": [],
                "completed": 42783321,
                "total": 42783321,
                "startedAt": 1576535996510,
                "endedAt": 1576536908409,
                "elapsedTime": 911899,
                "totalTime": 911899,
                "eachTime": 0.021314357527317713,
                "rate": 46916.73200650511,
                "status": 1
            },
            {
                "step": "snapshot",
                "unit": "frames",
                "errors": [],
                "completed": 84,
                "total": 84,
                "startedAt": 1576535997022,
                "endedAt": 1576536908448,
                "elapsedTime": 911426,
                "totalTime": 911426,
                "eachTime": 10850.309523809523,
                "rate": 0.09216326942615198,
                "status": 1
            },
            {
                "step": "cv",
                "unit": "frames",
                "errors": [],
                "completed": 84,
                "total": 84,
                "startedAt": 1576536007632,
                "endedAt": 1576536909243,
                "elapsedTime": 901611,
                "totalTime": 901611,
                "eachTime": 10733.464285714286,
                "rate": 0.09316656518165817,
                "status": 1
            },
            {
                "step": "nn",
                "unit": "frames",
                "errors": [],
                "completed": 37,
                "total": 84,
                "startedAt": 1576536994216,
                "endedAt": 1576536994228,
                "elapsedTime": 12,
                "totalTime": 12,
                "eachTime": 0.32432432432432434,
                "rate": 3083.3333333333335,
                "status": 0.44047619047619047
            },
            {
                "step": "db",
                "unit": "frames",
                "errors": [],
                "completed": 19,
                "total": 84,
                "startedAt": 1576537000023,
                "endedAt": 1576537000293,
                "elapsedTime": 270,
                "totalTime": 270,
                "eachTime": 14.210526315789474,
                "rate": 70.37037037037037,
                "status": 0.2261904761904762
            },
            {
                "step": "map",
                "unit": "frames",
                "errors": [],
                "completed": 19,
                "total": 84,
                "startedAt": 1576537000356,
                "endedAt": 1576537000382,
                "elapsedTime": 26,
                "totalTime": 26,
                "eachTime": 1.368421052631579,
                "rate": 730.7692307692308,
                "status": 0.2261904761904762
            },
            {
                "step": "store",
                "unit": "frames",
                "errors": [],
                "completed": 19,
                "total": 84,
                "startedAt": 1576537000368,
                "endedAt": 1576537000395,
                "elapsedTime": 27,
                "totalTime": 27,
                "eachTime": 1.4210526315789473,
                "rate": 703.7037037037037,
                "status": 0.2261904761904762
            }
        ],
        "job": {
            "uri": "http://video_2.mp4",
            "options": {
                "page": "0",
                "pageLimit": "2",
                "legacy": true
            }
        },
        "jobs": {
            "pending": [],
            "successful": [],
            "failed": []
        }
    },
    "data": [
        {
            "_type": "Frame",
            "_id": "frame-26869006b3e9634223a9afd4a2dfc66b-0",
            "index": 0,
            "timestamp": 0,
            "image": {
                "_type": "Image",
                "uri": "//localhost:1331/video/cache/uri-qa.markable.ai-a266ffad969fabefaa353b12bf732a93/catalogs-383808cdc34b010f04681287c74cb1af.fps-5/process/03.snapshot/raw/fps5-000001.png",
                "width": 450,
                "height": 800
            },
            "results": [
                {
                    "_type": "SearchResult",
                    "_id": "result-frame-26869006b3e9634223a9afd4a2dfc66b-0-track-jeans_0",
                    "score": 0.9925562739372253,
                    "category": {
                        "_type": "Category",
                        "_id": "jeans",
                        "name": "jeans"
                    },
                    "bounding_box": {
                        "_type": "BoundingBox",
                        "_id": "bbox-45444c02571893d7d953d11b20477a13",
                        "x": 295.3294372558594,
                        "y": 365.76226806640625,
                        "width": 78.07376098632812,
                        "height": 203.5692138671875
                    },
                    "track": {
                        "_type": "Track",
                        "_id": "track-jeans_0",
                        "id": "track-jeans_0",
                        "index": 0,
                        "score": 0.9925562739372253,
                        "feature_hash": "22bba171c21c8dcd116415fc7267918f"
                    },
                    "matches": [
                        {
                            "_type": "CatalogItem",
                            "_id": "5deec3ee13ee690011eb124b",
                            "schema": "product",
                            "score": 0.9323215675354004,
                            "neighbor": {
                                "vector_hash": "e6bcad8f0230fb72b3046cc979e7dc55",
                                "score": 0.9323215675354004,
                                "catalog": "catalog1",
                                "category": "jeans",
                                "gender": "female",
                                "view": null,
                                "age_group": null,
                                "related_matches_id": null
                            },
                            "catalog": {
                                "_type": "Catalog",
                                "_id": "5de959fd0306310059298f44",
                                "name": "catalog1"
                            },
                            "images": [
                                {
                                    "_type": "Image",
                                    "_id": null,
                                    "uri": "http://product-1.jpg",
                                    "width": 1200,
                                    "height": 1200
                                }
                            ],
                            "data": {
                                "id": "6918341855521355924",
                                "sku": "6918341855521355924",
                                "name": "product",
                                "url": "http://product_webite.html",
                                "category": "jeans",
                                "gender": "female",
                                "age_group": "adults",
                                "stock": true,
                                "price": 499,
                                "sale_price": "228",
                                "currency": "USD"
                            },
                            "created_at": "2019-12-09T22:00:14.193Z",
                            "updated_at": "2019-12-12T01:50:38.925Z"
                        },
                        {
                            "_type": "CatalogItem",
                            "_id": "5def550be78030004ea89dfc",
                            "schema": "product",
                            "score": 0.9317789363861084,
                            "neighbor": {
                                "vector_hash": "72acce7d42dc18a87eaf857f179d71c8",
                                "score": 0.9317789363861084,
                                "catalog": "catalog2",
                                "category": "jeans",
                                "gender": "female",
                                "view": null,
                                "age_group": null,
                                "related_matches_id": null
                            },
                            "catalog": {
                                "_type": "Catalog",
                                "_id": "5dee896c2f767a004be741ab",
                                "name": "catalog2"
                            },
                            "images": [
                                {
                                    "_type": "Image",
                                    "_id": null,
                                    "uri": "http://product-2.jpg",
                                    "width": 800,
                                    "height": 800
                                }
                            ],
                            "data": {
                                "id": "592775994152",
                                "sku": "592775994152",
                                "name": "product2",
                                "url": "https://product_webite.html",
                                "category": "womens jeans",
                                "gender": "female",
                                "stock": true,
                                "currency": "USD",
                                "price": 98,
                                "age_group": "adults"
                            },
                            "created_at": "2019-12-10T08:19:23.403Z",
                            "updated_at": "2019-12-10T08:33:23.444Z"
                        },
                        {
                            "_type": "CatalogItem",
                            "_id": "5defe65e994eea0055aed1bc",
                            "schema": "product",
                            "score": 0.9316892147064209,
                            "neighbor": {
                                "vector_hash": "13562f2d63a24af8f5c4600d1f983e49",
                                "score": 0.9316892147064209,
                                "catalog": "catalog1",
                                "category": "jeans",
                                "gender": "female",
                                "view": null,
                                "age_group": null,
                                "related_matches_id": null
                            },
                            "catalog": {
                                "_type": "Catalog",
                                "_id": "5de959fd0306310059298f44",
                                "name": "catalog1"
                            },
                            "images": [
                                {
                                    "_type": "Image",
                                    "_id": null,
                                    "uri": "http://product-3.jpg",
                                    "width": 1200,
                                    "height": 1200
                                }
                            ],
                            "data": {
                                "id": "2164494563",
                                "sku": "2164494563",
                                "name": "product3",
                                "url": "http://product_webite.html",
                                "category": "jeans",
                                "gender": "female",
                                "age_group": "adults",
                                "stock": true,
                                "price": 828,
                                "sale_price": "579",
                                "currency": "USD"
                            },
                            "created_at": "2019-12-10T18:39:26.178Z",
                            "updated_at": "2019-12-12T01:53:42.366Z"
                        }
                    ]
                },
                {
                    "_type": "SearchResult",
                    "_id": "result-frame-26869006b3e9634223a9afd4a2dfc66b-0-track-tees_1",
                    "score": 0.9778891801834106,
                    "category": {
                        "_type": "Category",
                        "_id": "tees",
                        "name": "tees"
                    },
                    "bounding_box": {
                        "_type": "BoundingBox",
                        "_id": "bbox-5a3c6a15b0b46bac1b2d547faa4bbd20",
                        "x": 287.39361572265625,
                        "y": 264.7693176269531,
                        "width": 104.07992553710938,
                        "height": 108.3822021484375
                    },
                    "track": {
                        "_type": "Track",
                        "_id": "track-tees_1",
                        "id": "track-tees_1",
                        "index": 1,
                        "score": 0.9778891801834106,
                        "feature_hash": "150d2db2669692c0bfcce36418e390d8"
                    },
                    "matches": [
                        {
                            "_type": "CatalogItem",
                            "_id": "5def55c65d131500236a2e5a",
                            "schema": "product",
                            "score": 0.9225725936889648,
                            "neighbor": {
                                "vector_hash": "ba0cf49508dd1e114f741ef5723652d1",
                                "score": 0.9225725936889648,
                                "catalog": "catalog2",
                                "category": "tees",
                                "gender": "female",
                                "view": null,
                                "age_group": null,
                                "related_matches_id": null
                            },
                            "catalog": {
                                "_type": "Catalog",
                                "_id": "5dee896c2f767a004be741ab",
                                "name": "catalog2"
                            },
                            "images": [
                                {
                                    "_type": "Image",
                                    "_id": null,
                                    "uri": "http://product-1.jpg",
                                    "width": 800,
                                    "height": 800
                                }
                            ],
                            "data": {
                                "id": "566798857134",
                                "sku": "566798857134",
                                "name": "product1",
                                "url": "http://product_webite.html"
                                "category": "Women s tanks camis",
                                "gender": "female",
                                "stock": true,
                                "price": 49,
                                "currency": "USD",
                                "age_group": "adults"
                            },
                            "created_at": "2019-12-10T08:22:30.148Z",
                            "updated_at": "2019-12-12T03:58:30.015Z"
                        },
                        {
                            "_type": "CatalogItem",
                            "_id": "5defdf48994eea0055ae95db",
                            "schema": "product",
                            "score": 0.9119216156005859,
                            "neighbor": {
                                "vector_hash": "06e2c32a5aa7c0a9d85633a45701bb3c",
                                "score": 0.9119216156005859,
                                "catalog": "catalog1",
                                "category": "tees",
                                "gender": "female",
                                "view": null,
                                "age_group": null,
                                "related_matches_id": null
                            },
                            "catalog": {
                                "_type": "Catalog",
                                "_id": "5de959fd0306310059298f44",
                                "name": "catalog1"
                            },
                            "images": [
                                {
                                    "_type": "Image",
                                    "_id": null,
                                    "uri": "http://product-2.jpg",
                                    "width": 1200,
                                    "height": 1200
                                }
                            ],
                            "data": {
                                "id": "2156283988",
                                "sku": "2156283988",
                                "name": "Product2",
                                "url": "https://product_webite.html",
                                "category": "tees",
                                "gender": "female",
                                "age_group": "adults",
                                "stock": true,
                                "price": 339,
                                "sale_price": "118",
                                "currency": "USD"
                            },
                            "created_at": "2019-12-10T18:09:12.117Z",
                            "updated_at": "2019-12-10T23:05:16.949Z"
                        },
                        {
                            "_type": "CatalogItem",
                            "_id": "5defdc67956117002ff8d6ee",
                            "schema": "product",
                            "score": 0.9104684257507324,
                            "neighbor": {
                                "vector_hash": "3ea97b55cbd5a9abb7adcc440357855a",
                                "score": 0.9104684257507324,
                                "catalog": "catalog3",
                                "category": "tees",
                                "gender": "female",
                                "view": null,
                                "age_group": null,
                                "related_matches_id": null
                            },
                            "catalog": {
                                "_type": "Catalog",
                                "_id": "5de96225cce3a80031e3c875",
                                "name": "catalog3"
                            },
                            "images": [
                                {
                                    "_type": "Image",
                                    "_id": null,
                                    "uri": "https://product-3.jpg",
                                    "width": 300,
                                    "height": 375
                                }
                            ],
                            "data": {
                                "id": "847941004700",
                                "sku": "3082046",
                                "name": "Product3",
                                "url": "https://product_webite.html",
                                "color": "jet black",
                                "category": "Women",
                                "gender": "female",
                                "age_group": "adults",
                                "stock": true,
                                "price": 29,
                                "brand": "Ingrid & Isabel",
                                "currency": "USD"
                            },
                            "created_at": "2019-12-10T17:56:55.811Z",
                            "updated_at": "2019-12-11T20:43:18.609Z"
                        }
                    ]
                }
            ]
        }
    ]
}

```

Search a video - detect and retreive products based on visual features/similarity.

<aside class="notice">
    This operation requires a valid <code>access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`POST https://catalog.markable.ai/video/search`


### HTTP Headers

Header              | Description
----------          | ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**


### Query Parameters

Parameter       | Type                                                      | Description
-------         | ----------                                                | -------
`page`          | integer                                                   | Default is 0
`pageLimit`     | integer                                                   | Frame results per page. Default is 5



### Body

Attribute       | Type                                                      | Description
-------         | ----------                                                | -------
`data`          | [VideoSearchQuery](#the-video-search-query-object)        | A valid video search object.
