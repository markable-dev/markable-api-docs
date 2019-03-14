
# Errors

**Markable** uses conventional HTTP response codes to indicate the success or failure of an API request. In general, codes in the **2xx** range indicate success, codes in the **4xx** range indicate an error due to information provided (e.g., a required parameter was omitted or incorrectly formatted, a catalog item operation failed, etc.), and codes in the **5xx** range indicate an error with our servers.


## HTTP Error Codes

Code    | Description
----    | -------
`400`   | `Bad Request` - The request format or JSON is invalid.
`401`   | `Unauthorized` - The API key is wrong.
`403`   | `Forbidden` - The specified resource is hidden for admins only.
`404`   | `Not Found` - The specified specified could not be found.
`405`   | `Method Not Allowed` - The request method is invalid for specified resource.
`408`   | `Timeout` - The request has timed out.
`409`   | `Conflict Error` - Duplicate resource prohibited. 
`413`   | `Entity Too Large` - The request exceeds size limit. 
`422`   | `Validation Error` - The request fails schema specifications. 
`429`   | `Too Many Requests` - You have reached your request per minute limit.
`500`   | `Internal Server Error` - We had a problem with our server. Please try again later.
`503`   | `Service Unavailable` - We're temporarially offline for maintanance. Please try again later.


## The Error Object

> **Example:** Error Response

```json
{
    "errors": [
        {
            "title": "Unauthorized",
            "id": "3f649f325620e5ddfa66f98c3945a7f7",
            "status": 401,
            "code": 401,
            "detail": "Authentication Error",
            "meta": {
                "timestamp": 1551820965551,
                "datetime": "2019-03-05T21:22:45.551Z"
            }
        }
    ]
}
```

A failed request will return a list of error objects according to the [JSON API Specification](http://jsonapi.org/format/#errors).

An error object **MAY** have the following properties:

Attribute   | Description
---------   | -------
`title`     | A short, human-readable summary of the problem that SHOULD NOT change from occurrence to occurrence of the problem, except for purposes of localization.
`id`        | A unique identifier for this particular occurrence of the problem.
`status`    | The HTTP status code applicable to this problem, expressed as a string value.
`code`      | An application-specific error code, expressed as a string value.
`detail`    | A human-readable explanation specific to this occurrence of the problem. Like title, this field’s value can be localized.
`links`     | A links object containing the following members.
`source`    | An object containing references to the source of the error.
`meta`      | An object containing non-standard information about the error.
