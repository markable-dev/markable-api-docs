
## Delete catalog

> **Example:** Request

```http
DELETE https://api.markable.ai/catalogs/catalog-1 HTTP/1.1
Authorization: Bearer 123abc
```

```shell
curl -X DELETE https://api.markable.ai/catalogs/catalog-1 \
-H 'Authorization: Bearer 123abc'
```

> **Example:** Response

```json
{
	"data": {}
}
```


Delete an existing [catalog](#the-catalog-object).

<aside class="notice">
	This operation requires a valid <code>access_token</code> - see <a href="#authentication">Authentication</a>.
</aside>


### HTTP Request

`DELETE https://api.markable.ai/catalogs/:catalogId`


### HTTP Headers

Header       		| Description
----------      	| ----------
`Authorization`     | [HTTP Bearer Token](https://tools.ietf.org/html/rfc6750) for authorizing the request. <br><br>Format is `Bearer :access_token`, where `access_token` is given by [Authentication](#authentication). **<small>required</small>**


### Query Parameters

Parameter 		| Description
---------- 		| ----------
`catalogId` 	| The ID of the catalog. **<small>required</small>**
