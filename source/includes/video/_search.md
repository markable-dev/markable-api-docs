
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

> **Example:** Response - Pending Indexing, Force

```json
    "meta": {
        "service": {
            "name": "markable-video-service",
            "version": "2.1.1",
            "environment": "production"
        },
        "request": {
            "protocol": "http",
            "method": "POST",
            "url": "/video/search?page=0&pageLimit=30",
            "route": "/video/search",
            "params": {},
            "query": {
                "page": "0",
                "pageLimit": "30"
            }
        },
        "pagination": {
            "page": 0,
            "pageBy": "index",
            "pageLimit": 30,
            "pageFrom": 0,
            "pageTo": 30,
            "pageSize": 30
        },
        "catalogs": {
            "requested": [
                "exmaple"
            ],
            "searched": [],
            "rejected": [
                "exmaple"
            ]
        },
        "track": {
            "trackStartAtTime": 0,
            "trackEndAtTime": 30,
            "trackStartAtIndex": 0,
            "trackEndAtIndex": 90,
            "trackSize": 90,
            "precision": 1,
            "seek": 0
        },
        "statuses": [
            {
                "type": "VideoJobStatus",
                "step": "config",
                "startedAt": 1585669803256,
                "endedAt": 1585669803385,
                "completed": 1,
                "total": 1,
                "unit": "configurations",
                "status": 1,
                "elapsedTime": 129,
                "eachTime": 129,
                "elapsedTimeString": "00:00:00.129",
                "eachTimeString": "00:00:00.129",
                "totalTime": 129,
                "totalTimeString": "00:00:00.129"
            },
            {
                "type": "VideoJobStatus",
                "step": "meta",
                "startedAt": 1585669803994,
                "endedAt": 1585669806193,
                "completed": 1,
                "total": 1,
                "unit": "metas",
                "status": 1,
                "elapsedTime": 2199,
                "eachTime": 2199,
                "elapsedTimeString": "00:00:02.199",
                "eachTimeString": "00:00:02.199",
                "totalTime": 2199,
                "totalTimeString": "00:00:02.199"
            },
            {
                "type": "VideoJobStatus",
                "step": "download",
                "startedAt": 1585669806275,
                "endedAt": 1585669850566,
                "completed": 553283420,
                "total": 553283420,
                "unit": "bytes",
                "status": 1,
                "elapsedTime": 44291,
                "eachTime": 0.0000800511969073644,
                "elapsedTimeString": "00:00:44.291",
                "eachTimeString": "00:00:00.000",
                "fingerprint": "b6a941d11dea83c84fb23c143aa4ebaa",
                "totalTime": 44291,
                "rate": 12492005.599331694,
                "totalTimeString": "00:00:44.291"
            },
            {
                "type": "VideoJobStatus",
                "step": "snapshot",
                "startedAt": 1585670660247,
                "endedAt": 1585671758487,
                "completed": 7945,
                "total": 7945,
                "unit": "frames",
                "status": 1,
                "elapsedTime": 1098240,
                "eachTime": 138.23033354310888,
                "elapsedTimeString": "00:18:18.240",
                "eachTimeString": "00:00:00.138",
                "totalTime": 1098240,
                "rate": 7.234302156177156,
                "totalTimeString": "00:18:18.240"
            },
            {
                "_type": "VideoJobStatus",
                "type": "VideoJobStatus",
                "step": "cv",
                "startedAt": 1585670673768,
                "endedAt": 1586210046233,
                "total": 7945,
                "unit": "frames",
                "completed": 7945,
                "elapsedTime": 539372465,
                "totalTime": 539372465,
                "eachTime": 67888.29011957206,
                "rate": 0.01473008081715851,
                "elapsedTimeString": "05:49:32.465",
                "eachTimeString": "00:01:07.888",
                "totalTimeString": "05:49:32.465",
                "status": 1
            },
            {
                "type": "VideoJobStatus",
                "step": "track",
                "startedAt": 1586880237515,
                "endedAt": 1586880237650,
                "total": 90,
                "completed": 90,
                "unit": "frames",
                "status": 1,
                "elapsedTime": 135,
                "eachTime": 1.5,
                "totalTime": 135,
                "elapsedTimeString": "00:00:00.135",
                "eachTimeString": "00:00:00.001",
                "totalTimeString": "00:00:00.135"
            },
            {
                "type": "VideoJobStatus",
                "step": "nn",
                "startedAt": 1586880237673,
                "endedAt": 1586880237707,
                "total": 1,
                "completed": 1,
                "unit": "neighbors",
                "status": 1,
                "elapsedTime": 34,
                "eachTime": 34,
                "totalTime": 34,
                "elapsedTimeString": "00:00:00.034",
                "eachTimeString": "00:00:00.034",
                "totalTimeString": "00:00:00.034"
            },
            {
                "type": "VideoJobStatus",
                "step": "db",
                "startedAt": 1586880237710,
                "endedAt": 1586880237710,
                "total": 1,
                "completed": 1,
                "unit": "lookup",
                "status": 1,
                "elapsedTime": 0,
                "eachTime": 0,
                "totalTime": 0,
                "elapsedTimeString": "00:00:00.000",
                "eachTimeString": "00:00:00.000",
                "totalTimeString": "00:00:00.000"
            }
        ],
        "exists": {
            "configure": true,
            "meta": true,
            "download": true,
            "snapshot": true,
            "cv": true,
            "track": true,
            "nn": true,
            "db": true
        },
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
            "cv": {
                "started": true,
                "ended": true,
                "succeeded": true,
                "failed": false
            },
            "track": {
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
            }
        },
        "enqueued": false,
        "job": {
            "_id": "5e8366ab611d5f001019d663",
            "url": "https://example_video.mp4",
            "created_at": "2020-03-31T15:50:03.470Z",
            "updated_at": "2020-04-06T21:54:06.245Z",
            "_type": "Video",
            "uri": "https://example_video.mp4",
            "options": {
                "fingerprint": "b6a941d11dea83c84fb23c143aa4ebaa",
                "framesPerSecond": 3,
                "catalogs": [
                    {
                        "name": "exmaple_catalog"
                    }
                ]
            }
        },
        "jobs": {
            "pending": [],
            "successful": [],
            "failed": []
        }
    },
```

> **Example:** Response - Fully indexed video with product results

```json
{   
    "meta" : {"...."},
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

`POST https://video.markable.ai/video/search`


### HTTP Headers

Header              | Description
----------          | ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**


### Query Parameters

Parameter       | Type                                                      | Description
-------         | ----------                                                | -------
`page`          | integer                                                   | Default value is `0`
`pageLimit`     | integer                                                   | Frame results per page. Default value is `5`


### Body

Attribute       | Type                                                      | Description
-------         | ----------                                                | -------
`data`          | [VideoSearchQuery](#the-video-search-query-object)        | A valid video search object.
