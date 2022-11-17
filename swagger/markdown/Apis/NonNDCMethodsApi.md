# NonNDCMethodsApi

All URIs are relative to *https://proxy.airgateway.net/v1.2*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**itinShoppingPost**](NonNDCMethodsApi.md#itinShoppingPost) | **POST** /ItinShopping | Post ItinShopping |
| [**orderCommentsPost**](NonNDCMethodsApi.md#orderCommentsPost) | **POST** /OrderComments | Post OrderComments |
| [**orderFileGET**](NonNDCMethodsApi.md#orderFileGET) | **GET** /OrderFile | GET OrderFile |
| [**orderHistoryGET**](NonNDCMethodsApi.md#orderHistoryGET) | **GET** /OrderHistory | GET OrderHistory |
| [**orderListGET**](NonNDCMethodsApi.md#orderListGET) | **GET** /OrderList | GET OrderList |
| [**orderMetasPost**](NonNDCMethodsApi.md#orderMetasPost) | **POST** /OrderMetas | Post OrderMetas |
| [**orderRemarksPost**](NonNDCMethodsApi.md#orderRemarksPost) | **POST** /OrderRemarks | Post OrderRemarks |
| [**orderReviewPost**](NonNDCMethodsApi.md#orderReviewPost) | **POST** /OrderReview | Post OrderReview |
| [**providerListGET**](NonNDCMethodsApi.md#providerListGET) | **GET** /ProviderList | GET ProviderList |
| [**statusGet**](NonNDCMethodsApi.md#statusGet) | **GET** /status | Get Status |


<a name="itinShoppingPost"></a>
# **itinShoppingPost**
> ItinShoppingMedia itinShoppingPost(Ag-Providers, payload)

Post ItinShopping

    Find itinerary by O&amp;D, dates and flight numbers by exact matching input data.&lt;br&gt;   ItinShopping supports all possible itinerary types such as: OW (one-way), RT (round-trip) and MC (multi-city)&lt;br&gt;   &lt;b&gt;(one-trip)&lt;/b&gt; -&gt; To search one way itinerary provide single itinerary object.&lt;/br&gt;   &lt;b&gt;(round-trip)&lt;/b&gt; -&gt; To search round trip provide two itinerary objects&lt;/br&gt;   &lt;b&gt;(round-trip)&lt;/b&gt; -&gt; To search multi city provide itinerary objects according to number of flights&lt;/br&gt; 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Ag-Providers** | **String**| Provider ID | [default to null] |
| **payload** | [**ItinShoppingPayload**](../Models/ItinShoppingPayload.md)| ItinShoppingPayload is the type for ItinShopping endpoint request body | |

### Return type

[**ItinShoppingMedia**](../Models/ItinShoppingMedia.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml, application/gob, application/x-gob
- **Accept**: application/airgateway.github.io.itinshoppingmedia+json, application/vnd.goa.error

<a name="orderCommentsPost"></a>
# **orderCommentsPost**
> OrderCommentsMedia orderCommentsPost(Ag-Providers, payload)

Post OrderComments

    OrderComments updates order with new comments

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Ag-Providers** | **String**| Provider ID | [default to null] |
| **payload** | [**OrderCommentsPayload**](../Models/OrderCommentsPayload.md)| OrderCommentsPayload is the type for OrderComments endpoint request body | |

### Return type

[**OrderCommentsMedia**](../Models/OrderCommentsMedia.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml, application/gob, application/x-gob
- **Accept**: application/airgateway.github.io.ordercommentsmedia+json, application/vnd.goa.error

<a name="orderFileGET"></a>
# **orderFileGET**
> orderFileGET(Ag-Providers, file\_id, id)

GET OrderFile

    OrderFile

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Ag-Providers** | **String**| Provider ID | [default to null] |
| **file\_id** | **String**| Airgateway File ID | [optional] [default to null] |
| **id** | **String**| Airgateway Order ID | [optional] [default to null] |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="orderHistoryGET"></a>
# **orderHistoryGET**
> OrderHistoryMedia orderHistoryGET(Ag-Providers, id)

GET OrderHistory

    OrderHistory

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Ag-Providers** | **String**| Provider ID | [default to null] |
| **id** | **String**| Airgateway Order ID | [optional] [default to null] |

### Return type

[**OrderHistoryMedia**](../Models/OrderHistoryMedia.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/airgateway.github.io.orderhistorymedia+json, application/vnd.goa.error

<a name="orderListGET"></a>
# **orderListGET**
> OrderListMedia orderListGET(Ag-Providers, agency, approveStatus, bookingDateFrom, bookingDateTo, corporateID, departureDate, destination, disrupted, id, origin, page, pageSize, pax, pnr, providers, psgName, psgSurname, showOrdersType, showSubagencies, sort, status, ticketNumber)

GET OrderList

    OrderList

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Ag-Providers** | **String**| Provider ID | [default to null] |
| **agency** | **String**| Agency | [optional] [default to null] |
| **approveStatus** | **String**| Orders with approve status [in_progress / approved / refused] | [optional] [default to null] |
| **bookingDateFrom** | **String**| Booking date from | [optional] [default to null] |
| **bookingDateTo** | **String**| Booking date to | [optional] [default to null] |
| **corporateID** | **String**| Corporate ID | [optional] [default to null] |
| **departureDate** | **String**| Departure date | [optional] [default to null] |
| **destination** | **String**| Destination of flight | [optional] [default to null] |
| **disrupted** | **String**| Show disrupted orders | [optional] [default to null] |
| **id** | **String**| Sort order | [optional] [default to null] |
| **origin** | **String**| Origin of flight | [optional] [default to null] |
| **page** | **String**| Page number | [optional] [default to null] |
| **pageSize** | **String**| Orders number per page | [optional] [default to null] |
| **pax** | **String**| PAX number | [optional] [default to null] |
| **pnr** | **String**| PNR | [optional] [default to null] |
| **providers** | **String**| Providers list separated by comma | [optional] [default to null] |
| **psgName** | **String**| Passenger name | [optional] [default to null] |
| **psgSurname** | **String**| Passenger surname | [optional] [default to null] |
| **showOrdersType** | **String**| Show orders type | [optional] [default to null] |
| **showSubagencies** | **String**| Flag to show subagencies&#39; orders | [optional] [default to null] |
| **sort** | **String**| Sort order | [optional] [default to null] |
| **status** | **String**| Status of order | [optional] [default to null] |
| **ticketNumber** | **String**| Ticket Nr. / EMD | [optional] [default to null] |

### Return type

[**OrderListMedia**](../Models/OrderListMedia.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/airgateway.github.io.orderlistmedia+json, application/vnd.goa.error

<a name="orderMetasPost"></a>
# **orderMetasPost**
> OrderMetasMedia orderMetasPost(Ag-Providers, payload)

Post OrderMetas

    OrderMetas updates order with new metas

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Ag-Providers** | **String**| Provider ID | [default to null] |
| **payload** | [**OrderMetasPayload**](../Models/OrderMetasPayload.md)| OrderMetasPayload is the type for OrderMetas endpoint request body | |

### Return type

[**OrderMetasMedia**](../Models/OrderMetasMedia.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml, application/gob, application/x-gob
- **Accept**: application/airgateway.github.io.ordermetasmedia+json, application/vnd.goa.error

<a name="orderRemarksPost"></a>
# **orderRemarksPost**
> OrderRemarksMedia orderRemarksPost(Ag-Providers, payload)

Post OrderRemarks

    OrderRemarks updates order with new remarks

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Ag-Providers** | **String**| Provider ID | [default to null] |
| **payload** | [**OrderRemarksPayload**](../Models/OrderRemarksPayload.md)| OrderRemarksPayload is the type for OrderRemarks endpoint request body | |

### Return type

[**OrderRemarksMedia**](../Models/OrderRemarksMedia.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml, application/gob, application/x-gob
- **Accept**: application/airgateway.github.io.orderremarksmedia+json, application/vnd.goa.error

<a name="orderReviewPost"></a>
# **orderReviewPost**
> OrderReviewMedia orderReviewPost(Ag-Providers, payload)

Post OrderReview

    OrderReview returns result of review approval/rejection

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Ag-Providers** | **String**| Provider ID | [default to null] |
| **payload** | [**OrderReviewPayload**](../Models/OrderReviewPayload.md)| OrderReviewPayload is the type for OrderReview endpoint request body | |

### Return type

[**OrderReviewMedia**](../Models/OrderReviewMedia.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml, application/gob, application/x-gob
- **Accept**: application/airgateway.github.io.orderreviewmedia+json, application/vnd.goa.error

<a name="providerListGET"></a>
# **providerListGET**
> ProviderListMedia providerListGET(Ag-Providers)

GET ProviderList

    ProviderList

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Ag-Providers** | **String**| Provider ID | [default to null] |

### Return type

[**ProviderListMedia**](../Models/ProviderListMedia.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/airgateway.github.io.providerlistmedia+json, application/vnd.goa.error

<a name="statusGet"></a>
# **statusGet**
> statusGet()

Get Status

    Status returns ok if API is active

### Parameters
This endpoint does not need any parameter.

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

