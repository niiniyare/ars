# \NDCMethodsApi

All URIs are relative to *https://proxy.airgateway.net/v1.2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AirDocIssuePost**](NDCMethodsApi.md#AirDocIssuePost) | **Post** /AirDocIssue | Post AirDocIssue
[**AirShoppingPost**](NDCMethodsApi.md#AirShoppingPost) | **Post** /AirShopping | Post AirShopping
[**OfferPricePost**](NDCMethodsApi.md#OfferPricePost) | **Post** /OfferPrice | Post OfferPrice
[**OrderCancelPost**](NDCMethodsApi.md#OrderCancelPost) | **Post** /OrderCancel | Post OrderCancel
[**OrderChangePost**](NDCMethodsApi.md#OrderChangePost) | **Post** /OrderChange | Post OrderChange
[**OrderCreatePost**](NDCMethodsApi.md#OrderCreatePost) | **Post** /OrderCreate | Post OrderCreate
[**OrderReshopPost**](NDCMethodsApi.md#OrderReshopPost) | **Post** /OrderReshop | Post OrderReshop
[**OrderReshopRefundPost**](NDCMethodsApi.md#OrderReshopRefundPost) | **Post** /OrderReshopRefund | Post OrderReshopRefund
[**OrderReshopRepricePost**](NDCMethodsApi.md#OrderReshopRepricePost) | **Post** /OrderReshopReprice | Post OrderReshopReprice
[**OrderRetrievePost**](NDCMethodsApi.md#OrderRetrievePost) | **Post** /OrderRetrieve | Post OrderRetrieve
[**OrderUpdatePost**](NDCMethodsApi.md#OrderUpdatePost) | **Post** /OrderUpdate | Post OrderUpdate
[**SeatAvailabilityPost**](NDCMethodsApi.md#SeatAvailabilityPost) | **Post** /SeatAvailability | Post SeatAvailability
[**ServiceListPost**](NDCMethodsApi.md#ServiceListPost) | **Post** /ServiceList | Post ServiceList


# **AirDocIssuePost**
> OrderCreateMedia AirDocIssuePost(ctx, agProviders, payload)
Post AirDocIssue

AirDocIssue the ability to pay for the held booking.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **agProviders** | **string**| Provider ID | 
  **payload** | [**AirDocIssuePayloadPayload**](AirDocIssuePayloadPayload.md)|  | 

### Return type

[**OrderCreateMedia**](OrderCreateMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.ordercreatemedia+json, application/vnd.goa.error

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **AirShoppingPost**
> AirShoppingMedia AirShoppingPost(ctx, agProviders, payload, optional)
Post AirShopping

Get a list of offers for provided O&D, dates and travelers.   There are three types of AirShopping request:<br> <b>(one-way)</b> -> For this airshopping, the array of OriginDestination´s must have only one element.</br>   <b>(round-trip)</b> -> For this airshopping, the array of OriginDestination´s must have only two elements, and the arrival of the second element must be the same that the departure of the first element.</br>   <b>(multi-city)</b> -> For this airshopping, the array of OriginDestination´s can have an unlimited quantity of elements.</br>   This method allows async behavior by sending <b>AG-Connection: keep-alive</b> header. If a request is received with this header, response will be real-time <a href=\"https://en.wikipedia.org/wiki/JSON_Streaming\">json streaming</a> so API will return offers as soon as they are received from providers and parsed. Streaming responses are line delimited JSON. You can <a href=\"https://api.airgateway.work/streaming-json-example.json\">see an example here</a>.</br>   If AG-Connection is not sent, all responses from providers will be parsed together (it will be slow since it needs to wait for all provider's responses) and there will be only a response with format specified here.<br>   As an additional header option you can control maximum request lifetime. Use <b>AG-Request-Timeout</b> header with integer number value in milliseconds.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **agProviders** | **string**| Provider IDs list or * for all | 
  **payload** | [**AirShoppingPayload**](AirShoppingPayload.md)| AirShoppingPayload is the type for AirShopping endpoint request body | 
 **optional** | ***NDCMethodsApiAirShoppingPostOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a NDCMethodsApiAirShoppingPostOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **agRequestTimeout** | **optional.String**| Request max lifetime in seconds | 

### Return type

[**AirShoppingMedia**](AirShoppingMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.airshoppingmedia+json, application/vnd.goa.error

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OfferPricePost**
> OfferPriceMedia OfferPricePost(ctx, agProviders, payload)
Post OfferPrice

OfferPrice performs an specific detailed info query on a precise flight.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **agProviders** | **string**| Provider ID | 
  **payload** | [**OfferPricePayload**](OfferPricePayload.md)|  | 

### Return type

[**OfferPriceMedia**](OfferPriceMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.flightpricemedia+json, application/vnd.goa.error

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrderCancelPost**
> OrderCancelMedia OrderCancelPost(ctx, agProviders, payload)
Post OrderCancel

OrderCancel returns cancelled order. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **agProviders** | **string**| Provider ID | 
  **payload** | [**OrderCancelPayload**](OrderCancelPayload.md)|  | 

### Return type

[**OrderCancelMedia**](OrderCancelMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.ordercancelmedia+json, application/vnd.goa.error

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrderChangePost**
> OrderCreateMedia OrderChangePost(ctx, agProviders, payload)
Post OrderChange

The OrderChange amends existing order/PNR, and returns amended order details.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **agProviders** | **string**| Provider ID | 
  **payload** | [**OrderChangePayload**](OrderChangePayload.md)|  | 

### Return type

[**OrderCreateMedia**](OrderCreateMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.ordercreatemedia+json, application/vnd.goa.error

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrderCreatePost**
> OrderCreateMedia OrderCreatePost(ctx, agProviders, payload)
Post OrderCreate

The OrderCreate makes a purchase request for the selected flight, and returns an OrderID (some providers also return a PNR), along with some flight data, such as the Origins-Destinations listing or the passenger list.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **agProviders** | **string**| Provider ID | 
  **payload** | [**OrderCreatePayload**](OrderCreatePayload.md)|  | 

### Return type

[**OrderCreateMedia**](OrderCreateMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.ordercreatemedia+json, application/vnd.goa.error

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrderReshopPost**
> OrderReshopMedia OrderReshopPost(ctx, agProviders, payload)
Post OrderReshop

OrderReshop returns offers avaialble for provided order ID and different date.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **agProviders** | **string**| Provider ID | 
  **payload** | [**OrderReshopPayload**](OrderReshopPayload.md)|  | 

### Return type

[**OrderReshopMedia**](OrderReshopMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.orderreshopmedia+json, application/vnd.goa.error

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrderReshopRefundPost**
> OrderReshopRefundMedia OrderReshopRefundPost(ctx, agProviders, payload)
Post OrderReshopRefund

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **agProviders** | **string**| Provider ID | 
  **payload** | [**OrderReshopRefundPayload**](OrderReshopRefundPayload.md)|  | 

### Return type

[**OrderReshopRefundMedia**](OrderReshopRefundMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.orderreshoprefundmedia+json, application/vnd.goa.error

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrderReshopRepricePost**
> OrderReshopRepriceMedia OrderReshopRepricePost(ctx, agProviders, payload)
Post OrderReshopReprice

OrderReshopReprice returns price for selected OrderReshop offer.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **agProviders** | **string**| Provider ID | 
  **payload** | [**OrderReshopRepricePayload**](OrderReshopRepricePayload.md)|  | 

### Return type

[**OrderReshopRepriceMedia**](OrderReshopRepriceMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.orderreshoprepricemedia+json, application/vnd.goa.error

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrderRetrievePost**
> OrderCreateMedia OrderRetrievePost(ctx, agProviders, payload, optional)
Post OrderRetrieve

OrderRetrieve returns an order information of existing order. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **agProviders** | **string**| Provider ID | 
  **payload** | [**OrderRetrievePayload**](OrderRetrievePayload.md)| OrderRetrievePayload is the type for OrderRetrieve endpoint request body | 
 **optional** | ***NDCMethodsApiOrderRetrievePostOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a NDCMethodsApiOrderRetrievePostOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **agNoCacheOR** | **optional.String**| If this header is set to any value, the OrderRetrieve request will be forwarded to the airline and its respective reply will also come from the airline. In case you don&#39;t set it, the OrderRetrieve reply will be generated from the information cached locally. | 

### Return type

[**OrderCreateMedia**](OrderCreateMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.ordercreatemedia+json, application/vnd.goa.error

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrderUpdatePost**
> OrderCreateMedia OrderUpdatePost(ctx, agProviders, payload)
Post OrderUpdate

The OrderUpdate amends existing passengers details on order/PNR, and returns amended order details.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **agProviders** | **string**| Provider ID | 
  **payload** | [**OrderUpdatePayload**](OrderUpdatePayload.md)|  | 

### Return type

[**OrderCreateMedia**](OrderCreateMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.ordercreatemedia+json, application/vnd.goa.error

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SeatAvailabilityPost**
> SeatAvailabilityMedia SeatAvailabilityPost(ctx, agProviders, payload)
Post SeatAvailability

SeatAvailability returns a list of seat, price of these seats, its location and some more info like, for example, if a seat can be occupied by infants or only adults.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **agProviders** | **string**| Provider ID | 
  **payload** | [**SeatAvailabilityPayload**](SeatAvailabilityPayload.md)| SeatAvailability data | 

### Return type

[**SeatAvailabilityMedia**](SeatAvailabilityMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.seatavailabilitymedia+json, application/vnd.goa.error

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ServiceListPost**
> ServiceListMedia ServiceListPost(ctx, agProviders, payload)
Post ServiceList

ServiceList returns a service list information for existing order. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **agProviders** | **string**| Provider ID | 
  **payload** | [**ServiceListPayload**](ServiceListPayload.md)| ServiceListPayload is the type for ServiceList endpoint request body | 

### Return type

[**ServiceListMedia**](ServiceListMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.servicelistmedia+json, application/vnd.goa.error

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

