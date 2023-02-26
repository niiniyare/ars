# .NonNDCMethodsApi

All URIs are relative to *https://proxy.airgateway.net/v1.2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**itinShoppingPost**](NonNDCMethodsApi.md#itinShoppingPost) | **POST** /ItinShopping | Post ItinShopping
[**orderCommentsPost**](NonNDCMethodsApi.md#orderCommentsPost) | **POST** /OrderComments | Post OrderComments
[**orderFileGET**](NonNDCMethodsApi.md#orderFileGET) | **GET** /OrderFile | GET OrderFile
[**orderHistoryGET**](NonNDCMethodsApi.md#orderHistoryGET) | **GET** /OrderHistory | GET OrderHistory
[**orderListGET**](NonNDCMethodsApi.md#orderListGET) | **GET** /OrderList | GET OrderList
[**orderMetasPost**](NonNDCMethodsApi.md#orderMetasPost) | **POST** /OrderMetas | Post OrderMetas
[**orderRemarksPost**](NonNDCMethodsApi.md#orderRemarksPost) | **POST** /OrderRemarks | Post OrderRemarks
[**orderReviewPost**](NonNDCMethodsApi.md#orderReviewPost) | **POST** /OrderReview | Post OrderReview
[**providerListGET**](NonNDCMethodsApi.md#providerListGET) | **GET** /ProviderList | GET ProviderList
[**statusGet**](NonNDCMethodsApi.md#statusGet) | **GET** /status | Get Status


# **itinShoppingPost**
> ItinShoppingMedia itinShoppingPost(payload)

Find itinerary by O&D, dates and flight numbers by exact matching input data.<br>   ItinShopping supports all possible itinerary types such as: OW (one-way), RT (round-trip) and MC (multi-city)<br>   <b>(one-trip)</b> -> To search one way itinerary provide single itinerary object.</br>   <b>(round-trip)</b> -> To search round trip provide two itinerary objects</br>   <b>(round-trip)</b> -> To search multi city provide itinerary objects according to number of flights</br> 

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NonNDCMethodsApi(configuration);

let body:.NonNDCMethodsApiItinShoppingPostRequest = {
  // string | Provider ID
  agProviders: "Ag-Providers_example",
  // ItinShoppingPayload | ItinShoppingPayload is the type for ItinShopping endpoint request body
  payload: {
    itinerary: [
      {
        arrival: "MAD",
        date: "2019-10-15",
        departure: "LHR",
        flightNumbers: [IB8706, IB8707],
      },
    ],
    metadata: {
      country: "DE",
      currency: "EUR",
      locale: "de_DE",
    },
    travelers: {
      ADT: 1.0,
      CHD: 0.0,
      INF: 0.0,
      v14: 0.0,
      VFR: 1.0,
      VNF: 0.0,
      VNN: 0.0,
      YAD: 0.0,
    },
  },
};

apiInstance.itinShoppingPost(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | **ItinShoppingPayload**| ItinShoppingPayload is the type for ItinShopping endpoint request body |
 **agProviders** | [**string**] | Provider ID | defaults to undefined


### Return type

**ItinShoppingMedia**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.itinshoppingmedia+json, application/vnd.goa.error


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |
**500** | Internal Server Error |  -  |
**503** | Service Unavailable |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **orderCommentsPost**
> OrderCommentsMedia orderCommentsPost(payload)

OrderComments updates order with new comments

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NonNDCMethodsApi(configuration);

let body:.NonNDCMethodsApiOrderCommentsPostRequest = {
  // string | Provider ID
  agProviders: "Ag-Providers_example",
  // OrderCommentsPayload | OrderCommentsPayload is the type for OrderComments endpoint request body
  payload: {
    comments: "Some text comments",
    id: "AGW-JHTE1543KJ",
  },
};

apiInstance.orderCommentsPost(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | **OrderCommentsPayload**| OrderCommentsPayload is the type for OrderComments endpoint request body |
 **agProviders** | [**string**] | Provider ID | defaults to undefined


### Return type

**OrderCommentsMedia**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.ordercommentsmedia+json, application/vnd.goa.error


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**404** | Not Found |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **orderFileGET**
> void orderFileGET()

OrderFile

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NonNDCMethodsApi(configuration);

let body:.NonNDCMethodsApiOrderFileGETRequest = {
  // string | Provider ID
  agProviders: "Ag-Providers_example",
  // string | Airgateway File ID (optional)
  fileId: "file_id_example",
  // string | Airgateway Order ID (optional)
  id: "id_example",
};

apiInstance.orderFileGET(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agProviders** | [**string**] | Provider ID | defaults to undefined
 **fileId** | [**string**] | Airgateway File ID | (optional) defaults to undefined
 **id** | [**string**] | Airgateway Order ID | (optional) defaults to undefined


### Return type

**void**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **orderHistoryGET**
> OrderHistoryMedia orderHistoryGET()

OrderHistory

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NonNDCMethodsApi(configuration);

let body:.NonNDCMethodsApiOrderHistoryGETRequest = {
  // string | Provider ID
  agProviders: "Ag-Providers_example",
  // string | Airgateway Order ID (optional)
  id: "id_example",
};

apiInstance.orderHistoryGET(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agProviders** | [**string**] | Provider ID | defaults to undefined
 **id** | [**string**] | Airgateway Order ID | (optional) defaults to undefined


### Return type

**OrderHistoryMedia**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/airgateway.github.io.orderhistorymedia+json, application/vnd.goa.error


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**404** | Not Found |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **orderListGET**
> OrderListMedia orderListGET()

OrderList

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NonNDCMethodsApi(configuration);

let body:.NonNDCMethodsApiOrderListGETRequest = {
  // string | Provider ID
  agProviders: "Ag-Providers_example",
  // string | Agency (optional)
  agency: "agency_example",
  // string | Orders with approve status [in_progress / approved / refused] (optional)
  approveStatus: "approveStatus_example",
  // string | Booking date from (optional)
  bookingDateFrom: "bookingDateFrom_example",
  // string | Booking date to (optional)
  bookingDateTo: "bookingDateTo_example",
  // string | Corporate ID (optional)
  corporateID: "corporateID_example",
  // string | Departure date (optional)
  departureDate: "departureDate_example",
  // string | Destination of flight (optional)
  destination: "destination_example",
  // string | Show disrupted orders (optional)
  disrupted: "disrupted_example",
  // string | Sort order (optional)
  id: "id_example",
  // string | Origin of flight (optional)
  origin: "origin_example",
  // string | Page number (optional)
  page: "page_example",
  // string | Orders number per page (optional)
  pageSize: "pageSize_example",
  // string | PAX number (optional)
  pax: "pax_example",
  // string | PNR (optional)
  pnr: "pnr_example",
  // string | Providers list separated by comma (optional)
  providers: "providers_example",
  // string | Passenger name (optional)
  psgName: "psgName_example",
  // string | Passenger surname (optional)
  psgSurname: "psgSurname_example",
  // string | Show orders type (optional)
  showOrdersType: "showOrdersType_example",
  // string | Flag to show subagencies' orders (optional)
  showSubagencies: "showSubagencies_example",
  // string | Sort order (optional)
  sort: "sort_example",
  // string | Status of order (optional)
  status: "status_example",
  // string | Ticket Nr. / EMD (optional)
  ticketNumber: "ticketNumber_example",
};

apiInstance.orderListGET(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agProviders** | [**string**] | Provider ID | defaults to undefined
 **agency** | [**string**] | Agency | (optional) defaults to undefined
 **approveStatus** | [**string**] | Orders with approve status [in_progress / approved / refused] | (optional) defaults to undefined
 **bookingDateFrom** | [**string**] | Booking date from | (optional) defaults to undefined
 **bookingDateTo** | [**string**] | Booking date to | (optional) defaults to undefined
 **corporateID** | [**string**] | Corporate ID | (optional) defaults to undefined
 **departureDate** | [**string**] | Departure date | (optional) defaults to undefined
 **destination** | [**string**] | Destination of flight | (optional) defaults to undefined
 **disrupted** | [**string**] | Show disrupted orders | (optional) defaults to undefined
 **id** | [**string**] | Sort order | (optional) defaults to undefined
 **origin** | [**string**] | Origin of flight | (optional) defaults to undefined
 **page** | [**string**] | Page number | (optional) defaults to undefined
 **pageSize** | [**string**] | Orders number per page | (optional) defaults to undefined
 **pax** | [**string**] | PAX number | (optional) defaults to undefined
 **pnr** | [**string**] | PNR | (optional) defaults to undefined
 **providers** | [**string**] | Providers list separated by comma | (optional) defaults to undefined
 **psgName** | [**string**] | Passenger name | (optional) defaults to undefined
 **psgSurname** | [**string**] | Passenger surname | (optional) defaults to undefined
 **showOrdersType** | [**string**] | Show orders type | (optional) defaults to undefined
 **showSubagencies** | [**string**] | Flag to show subagencies&#39; orders | (optional) defaults to undefined
 **sort** | [**string**] | Sort order | (optional) defaults to undefined
 **status** | [**string**] | Status of order | (optional) defaults to undefined
 **ticketNumber** | [**string**] | Ticket Nr. / EMD | (optional) defaults to undefined


### Return type

**OrderListMedia**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/airgateway.github.io.orderlistmedia+json, application/vnd.goa.error


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **orderMetasPost**
> OrderMetasMedia orderMetasPost(payload)

OrderMetas updates order with new metas

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NonNDCMethodsApi(configuration);

let body:.NonNDCMethodsApiOrderMetasPostRequest = {
  // string | Provider ID
  agProviders: "Ag-Providers_example",
  // OrderMetasPayload | OrderMetasPayload is the type for OrderMetas endpoint request body
  payload: {
    id: "AGW-JHTE1543KJ",
    metas: {},
  },
};

apiInstance.orderMetasPost(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | **OrderMetasPayload**| OrderMetasPayload is the type for OrderMetas endpoint request body |
 **agProviders** | [**string**] | Provider ID | defaults to undefined


### Return type

**OrderMetasMedia**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.ordermetasmedia+json, application/vnd.goa.error


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |
**404** | Not Found |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **orderRemarksPost**
> OrderRemarksMedia orderRemarksPost(payload)

OrderRemarks updates order with new remarks

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NonNDCMethodsApi(configuration);

let body:.NonNDCMethodsApiOrderRemarksPostRequest = {
  // string | Provider ID
  agProviders: "Ag-Providers_example",
  // OrderRemarksPayload | OrderRemarksPayload is the type for OrderRemarks endpoint request body
  payload: {
    data: {
      template: "multiline template",
      variables: {},
    },
    id: "AGW-JHTE1543KJ",
    result: "Est consequatur dolor reiciendis neque.",
  },
};

apiInstance.orderRemarksPost(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | **OrderRemarksPayload**| OrderRemarksPayload is the type for OrderRemarks endpoint request body |
 **agProviders** | [**string**] | Provider ID | defaults to undefined


### Return type

**OrderRemarksMedia**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.orderremarksmedia+json, application/vnd.goa.error


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**404** | Not Found |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **orderReviewPost**
> OrderReviewMedia orderReviewPost(payload)

OrderReview returns result of review approval/rejection

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NonNDCMethodsApi(configuration);

let body:.NonNDCMethodsApiOrderReviewPostRequest = {
  // string | Provider ID
  agProviders: "Ag-Providers_example",
  // OrderReviewPayload | OrderReviewPayload is the type for OrderReview endpoint request body
  payload: {
    action: "approve",
    id: "AGW-JHTE1543KJ",
    reason: "Nihil dolorum magnam voluptate.",
  },
};

apiInstance.orderReviewPost(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | **OrderReviewPayload**| OrderReviewPayload is the type for OrderReview endpoint request body |
 **agProviders** | [**string**] | Provider ID | defaults to undefined


### Return type

**OrderReviewMedia**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.orderreviewmedia+json, application/vnd.goa.error


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**404** | Not Found |  -  |
**500** | Internal Server Error |  -  |
**503** | Service Unavailable |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **providerListGET**
> ProviderListMedia providerListGET()

ProviderList

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NonNDCMethodsApi(configuration);

let body:.NonNDCMethodsApiProviderListGETRequest = {
  // string | Provider ID
  agProviders: "Ag-Providers_example",
};

apiInstance.providerListGET(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agProviders** | [**string**] | Provider ID | defaults to undefined


### Return type

**ProviderListMedia**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/airgateway.github.io.providerlistmedia+json, application/vnd.goa.error


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **statusGet**
> void statusGet()

Status returns ok if API is active

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NonNDCMethodsApi(configuration);

let body:any = {};

apiInstance.statusGet(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters
This endpoint does not need any parameter.


### Return type

**void**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


