
# Errors

**Markable** uses conventional HTTP response codes to indicate the success or failure of an API request. In general, codes in the **2xx** range indicate success, codes in the **4xx** range indicate an error that failed given the information provided (e.g., a required parameter was omitted, a catalog item operation failed, etc.), and codes in the **5xx** range indicate an error with our servers.


## Error Codes

Code 	| Description
---- 	| -------
`400` 	| `Bad Request` - The request is invalid.
`401` 	| `Unauthorized` - The API key is wrong.
`403` 	| `Forbidden` - The specified resource is hidden for admins only.
`404` 	| `Not Found` - The specified specified could not be found.
`405` 	| `Method Not Allowed` - The request method is invalid for specified resource.
`406` 	| `Not Acceptable` - The request format that isn't valid JSON.
`429` 	| `Too Many Requests` - You have reached the default request limit. This can be adjusted depending on needs.
`500` 	| `Internal Server Error` - We had a problem with our server. Please try again later.
`503` 	| `Service Unavailable` - We're temporarially offline for maintanance. Please try again later.


## The Error Object

> **Example:** Error Object

```json
{
	"_type": "Error",
	"id": "abc",
	"code": 400,
	"detail": "Something went wrong."
}
```

> **Example:** Error Response

```json
{
	"errors": [
		{
			"_type": "Error",
			"id": "abc",
			"code": 400,
			"detail": "Something went wrong."
		}
	]
}
```

A failed request will return a list of error objects according to the [JSON API Specification](http://jsonapi.org/format/#errors).

An error object **MAY** have the following members:

Attribute 	| Description
--------- 	| -------
id 			| A unique identifier for this particular occurrence of the problem.
links 		| A links object containing the following members.
status 		| The HTTP status code applicable to this problem, expressed as a string value.
code 		| An application-specific error code, expressed as a string value.
title 		| A short, human-readable summary of the problem that SHOULD NOT change from occurrence to occurrence of the problem, except for purposes of localization.
detail 		| A human-readable explanation specific to this occurrence of the problem. Like title, this field’s value can be localized.
source 		| An object containing references to the source of the error.
meta 		| A meta object containing non-standard meta-information about the error.
