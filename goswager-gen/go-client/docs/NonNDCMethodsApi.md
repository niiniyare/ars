# \NonNDCMethodsApi

All URIs are relative to *https://proxy.airgateway.net/v1.2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ItinShoppingPost**](NonNDCMethodsApi.md#ItinShoppingPost) | **Post** /ItinShopping | Post ItinShopping
[**OrderCommentsPost**](NonNDCMethodsApi.md#OrderCommentsPost) | **Post** /OrderComments | Post OrderComments
[**OrderFileGET**](NonNDCMethodsApi.md#OrderFileGET) | **Get** /OrderFile | GET OrderFile
[**OrderHistoryGET**](NonNDCMethodsApi.md#OrderHistoryGET) | **Get** /OrderHistory | GET OrderHistory
[**OrderListGET**](NonNDCMethodsApi.md#OrderListGET) | **Get** /OrderList | GET OrderList
[**OrderMetasPost**](NonNDCMethodsApi.md#OrderMetasPost) | **Post** /OrderMetas | Post OrderMetas
[**OrderRemarksPost**](NonNDCMethodsApi.md#OrderRemarksPost) | **Post** /OrderRemarks | Post OrderRemarks
[**OrderReviewPost**](NonNDCMethodsApi.md#OrderReviewPost) | **Post** /OrderReview | Post OrderReview
[**ProviderListGET**](NonNDCMethodsApi.md#ProviderListGET) | **Get** /ProviderList | GET ProviderList
[**StatusGet**](NonNDCMethodsApi.md#StatusGet) | **Get** /status | Get Status


# **ItinShoppingPost**
> ItinShoppingMedia ItinShoppingPost(ctx, agProviders, payload)
Post ItinShopping

Find itinerary by O&D, dates and flight numbers by exact matching input data.<br>   ItinShopping supports all possible itinerary types such as: OW (one-way), RT (round-trip) and MC (multi-city)<br>   <b>(one-trip)</b> -> To search one way itinerary provide single itinerary object.</br>   <b>(round-trip)</b> -> To search round trip provide two itinerary objects</br>   <b>(round-trip)</b> -> To search multi city provide itinerary objects according to number of flights</br> 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **agProviders** | **string**| Provider ID | 
  **payload** | [**ItinShoppingPayload**](ItinShoppingPayload.md)| ItinShoppingPayload is the type for ItinShopping endpoint request body | 

### Return type

[**ItinShoppingMedia**](ItinShoppingMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.itinshoppingmedia+json, application/vnd.goa.error

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrderCommentsPost**
> OrderCommentsMedia OrderCommentsPost(ctx, agProviders, payload)
Post OrderComments

OrderComments updates order with new comments

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **agProviders** | **string**| Provider ID | 
  **payload** | [**OrderCommentsPayload**](OrderCommentsPayload.md)| OrderCommentsPayload is the type for OrderComments endpoint request body | 

### Return type

[**OrderCommentsMedia**](OrderCommentsMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.ordercommentsmedia+json, application/vnd.goa.error

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrderFileGET**
> OrderFileGET(ctx, agProviders, optional)
GET OrderFile

OrderFile

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **agProviders** | **string**| Provider ID | 
 **optional** | ***NonNDCMethodsApiOrderFileGETOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a NonNDCMethodsApiOrderFileGETOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **fileId** | **optional.String**| Airgateway File ID | 
 **id** | **optional.String**| Airgateway Order ID | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrderHistoryGET**
> OrderHistoryMedia OrderHistoryGET(ctx, agProviders, optional)
GET OrderHistory

OrderHistory

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **agProviders** | **string**| Provider ID | 
 **optional** | ***NonNDCMethodsApiOrderHistoryGETOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a NonNDCMethodsApiOrderHistoryGETOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **id** | **optional.String**| Airgateway Order ID | 

### Return type

[**OrderHistoryMedia**](OrderHistoryMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.orderhistorymedia+json, application/vnd.goa.error

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrderListGET**
> OrderListMedia OrderListGET(ctx, agProviders, optional)
GET OrderList

OrderList

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **agProviders** | **string**| Provider ID | 
 **optional** | ***NonNDCMethodsApiOrderListGETOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a NonNDCMethodsApiOrderListGETOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **agency** | **optional.String**| Agency | 
 **approveStatus** | **optional.String**| Orders with approve status [in_progress / approved / refused] | 
 **bookingDateFrom** | **optional.String**| Booking date from | 
 **bookingDateTo** | **optional.String**| Booking date to | 
 **corporateID** | **optional.String**| Corporate ID | 
 **departureDate** | **optional.String**| Departure date | 
 **destination** | **optional.String**| Destination of flight | 
 **disrupted** | **optional.String**| Show disrupted orders | 
 **id** | **optional.String**| Sort order | 
 **origin** | **optional.String**| Origin of flight | 
 **page** | **optional.String**| Page number | 
 **pageSize** | **optional.String**| Orders number per page | 
 **pax** | **optional.String**| PAX number | 
 **pnr** | **optional.String**| PNR | 
 **providers** | **optional.String**| Providers list separated by comma | 
 **psgName** | **optional.String**| Passenger name | 
 **psgSurname** | **optional.String**| Passenger surname | 
 **showOrdersType** | **optional.String**| Show orders type | 
 **showSubagencies** | **optional.String**| Flag to show subagencies&#39; orders | 
 **sort** | **optional.String**| Sort order | 
 **status** | **optional.String**| Status of order | 
 **ticketNumber** | **optional.String**| Ticket Nr. / EMD | 

### Return type

[**OrderListMedia**](OrderListMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.orderlistmedia+json, application/vnd.goa.error

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrderMetasPost**
> OrderMetasMedia OrderMetasPost(ctx, agProviders, payload)
Post OrderMetas

OrderMetas updates order with new metas

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **agProviders** | **string**| Provider ID | 
  **payload** | [**OrderMetasPayload**](OrderMetasPayload.md)| OrderMetasPayload is the type for OrderMetas endpoint request body | 

### Return type

[**OrderMetasMedia**](OrderMetasMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.ordermetasmedia+json, application/vnd.goa.error

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrderRemarksPost**
> OrderRemarksMedia OrderRemarksPost(ctx, agProviders, payload)
Post OrderRemarks

OrderRemarks updates order with new remarks

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **agProviders** | **string**| Provider ID | 
  **payload** | [**OrderRemarksPayload**](OrderRemarksPayload.md)| OrderRemarksPayload is the type for OrderRemarks endpoint request body | 

### Return type

[**OrderRemarksMedia**](OrderRemarksMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.orderremarksmedia+json, application/vnd.goa.error

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrderReviewPost**
> OrderReviewMedia OrderReviewPost(ctx, agProviders, payload)
Post OrderReview

OrderReview returns result of review approval/rejection

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **agProviders** | **string**| Provider ID | 
  **payload** | [**OrderReviewPayload**](OrderReviewPayload.md)| OrderReviewPayload is the type for OrderReview endpoint request body | 

### Return type

[**OrderReviewMedia**](OrderReviewMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.orderreviewmedia+json, application/vnd.goa.error

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ProviderListGET**
> ProviderListMedia ProviderListGET(ctx, agProviders)
GET ProviderList

ProviderList

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **agProviders** | **string**| Provider ID | 

### Return type

[**ProviderListMedia**](ProviderListMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.providerlistmedia+json, application/vnd.goa.error

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **StatusGet**
> StatusGet(ctx, )
Get Status

Status returns ok if API is active

### Required Parameters
This endpoint does not need any parameter.

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

