# NDCMethodsApi

All URIs are relative to *https://proxy.airgateway.net/v1.2*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**airDocIssuePost**](NDCMethodsApi.md#airDocIssuePost) | **POST** /AirDocIssue | Post AirDocIssue |
| [**airShoppingPost**](NDCMethodsApi.md#airShoppingPost) | **POST** /AirShopping | Post AirShopping |
| [**offerPricePost**](NDCMethodsApi.md#offerPricePost) | **POST** /OfferPrice | Post OfferPrice |
| [**orderCancelPost**](NDCMethodsApi.md#orderCancelPost) | **POST** /OrderCancel | Post OrderCancel |
| [**orderChangePost**](NDCMethodsApi.md#orderChangePost) | **POST** /OrderChange | Post OrderChange |
| [**orderCreatePost**](NDCMethodsApi.md#orderCreatePost) | **POST** /OrderCreate | Post OrderCreate |
| [**orderReshopPost**](NDCMethodsApi.md#orderReshopPost) | **POST** /OrderReshop | Post OrderReshop |
| [**orderReshopRefundPost**](NDCMethodsApi.md#orderReshopRefundPost) | **POST** /OrderReshopRefund | Post OrderReshopRefund |
| [**orderReshopRepricePost**](NDCMethodsApi.md#orderReshopRepricePost) | **POST** /OrderReshopReprice | Post OrderReshopReprice |
| [**orderRetrievePost**](NDCMethodsApi.md#orderRetrievePost) | **POST** /OrderRetrieve | Post OrderRetrieve |
| [**orderUpdatePost**](NDCMethodsApi.md#orderUpdatePost) | **POST** /OrderUpdate | Post OrderUpdate |
| [**seatAvailabilityPost**](NDCMethodsApi.md#seatAvailabilityPost) | **POST** /SeatAvailability | Post SeatAvailability |
| [**serviceListPost**](NDCMethodsApi.md#serviceListPost) | **POST** /ServiceList | Post ServiceList |


<a name="airDocIssuePost"></a>
# **airDocIssuePost**
> OrderCreateMedia airDocIssuePost(Ag-Providers, payload)

Post AirDocIssue

    AirDocIssue the ability to pay for the held booking.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Ag-Providers** | **String**| Provider ID | [default to null] |
| **payload** | [**AirDocIssuePayloadPayload**](../Models/AirDocIssuePayloadPayload.md)|  | |

### Return type

[**OrderCreateMedia**](../Models/OrderCreateMedia.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml, application/gob, application/x-gob
- **Accept**: application/airgateway.github.io.ordercreatemedia+json, application/vnd.goa.error

<a name="airShoppingPost"></a>
# **airShoppingPost**
> AirShoppingMedia airShoppingPost(Ag-Providers, payload, Ag-Request-Timeout)

Post AirShopping

    Get a list of offers for provided O&amp;D, dates and travelers.   There are three types of AirShopping request:&lt;br&gt; &lt;b&gt;(one-way)&lt;/b&gt; -&gt; For this airshopping, the array of OriginDestination´s must have only one element.&lt;/br&gt;   &lt;b&gt;(round-trip)&lt;/b&gt; -&gt; For this airshopping, the array of OriginDestination´s must have only two elements, and the arrival of the second element must be the same that the departure of the first element.&lt;/br&gt;   &lt;b&gt;(multi-city)&lt;/b&gt; -&gt; For this airshopping, the array of OriginDestination´s can have an unlimited quantity of elements.&lt;/br&gt;   This method allows async behavior by sending &lt;b&gt;AG-Connection: keep-alive&lt;/b&gt; header. If a request is received with this header, response will be real-time &lt;a href&#x3D;\&quot;https://en.wikipedia.org/wiki/JSON_Streaming\&quot;&gt;json streaming&lt;/a&gt; so API will return offers as soon as they are received from providers and parsed. Streaming responses are line delimited JSON. You can &lt;a href&#x3D;\&quot;https://api.airgateway.work/streaming-json-example.json\&quot;&gt;see an example here&lt;/a&gt;.&lt;/br&gt;   If AG-Connection is not sent, all responses from providers will be parsed together (it will be slow since it needs to wait for all provider&#39;s responses) and there will be only a response with format specified here.&lt;br&gt;   As an additional header option you can control maximum request lifetime. Use &lt;b&gt;AG-Request-Timeout&lt;/b&gt; header with integer number value in milliseconds.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Ag-Providers** | **String**| Provider IDs list or * for all | [default to null] |
| **payload** | [**AirShoppingPayload**](../Models/AirShoppingPayload.md)| AirShoppingPayload is the type for AirShopping endpoint request body | |
| **Ag-Request-Timeout** | **String**| Request max lifetime in seconds | [optional] [default to null] |

### Return type

[**AirShoppingMedia**](../Models/AirShoppingMedia.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml, application/gob, application/x-gob
- **Accept**: application/airgateway.github.io.airshoppingmedia+json, application/vnd.goa.error

<a name="offerPricePost"></a>
# **offerPricePost**
> OfferPriceMedia offerPricePost(Ag-Providers, payload)

Post OfferPrice

    OfferPrice performs an specific detailed info query on a precise flight.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Ag-Providers** | **String**| Provider ID | [default to null] |
| **payload** | [**OfferPricePayload**](../Models/OfferPricePayload.md)|  | |

### Return type

[**OfferPriceMedia**](../Models/OfferPriceMedia.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml, application/gob, application/x-gob
- **Accept**: application/airgateway.github.io.flightpricemedia+json, application/vnd.goa.error

<a name="orderCancelPost"></a>
# **orderCancelPost**
> OrderCancelMedia orderCancelPost(Ag-Providers, payload)

Post OrderCancel

    OrderCancel returns cancelled order. 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Ag-Providers** | **String**| Provider ID | [default to null] |
| **payload** | [**OrderCancelPayload**](../Models/OrderCancelPayload.md)|  | |

### Return type

[**OrderCancelMedia**](../Models/OrderCancelMedia.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml, application/gob, application/x-gob
- **Accept**: application/airgateway.github.io.ordercancelmedia+json, application/vnd.goa.error

<a name="orderChangePost"></a>
# **orderChangePost**
> OrderCreateMedia orderChangePost(Ag-Providers, payload)

Post OrderChange

    The OrderChange amends existing order/PNR, and returns amended order details.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Ag-Providers** | **String**| Provider ID | [default to null] |
| **payload** | [**OrderChangePayload**](../Models/OrderChangePayload.md)|  | |

### Return type

[**OrderCreateMedia**](../Models/OrderCreateMedia.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml, application/gob, application/x-gob
- **Accept**: application/airgateway.github.io.ordercreatemedia+json, application/vnd.goa.error

<a name="orderCreatePost"></a>
# **orderCreatePost**
> OrderCreateMedia orderCreatePost(Ag-Providers, payload)

Post OrderCreate

    The OrderCreate makes a purchase request for the selected flight, and returns an OrderID (some providers also return a PNR), along with some flight data, such as the Origins-Destinations listing or the passenger list.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Ag-Providers** | **String**| Provider ID | [default to null] |
| **payload** | [**OrderCreatePayload**](../Models/OrderCreatePayload.md)|  | |

### Return type

[**OrderCreateMedia**](../Models/OrderCreateMedia.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml, application/gob, application/x-gob
- **Accept**: application/airgateway.github.io.ordercreatemedia+json, application/vnd.goa.error

<a name="orderReshopPost"></a>
# **orderReshopPost**
> OrderReshopMedia orderReshopPost(Ag-Providers, payload)

Post OrderReshop

    OrderReshop returns offers avaialble for provided order ID and different date.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Ag-Providers** | **String**| Provider ID | [default to null] |
| **payload** | [**OrderReshopPayload**](../Models/OrderReshopPayload.md)|  | |

### Return type

[**OrderReshopMedia**](../Models/OrderReshopMedia.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml, application/gob, application/x-gob
- **Accept**: application/airgateway.github.io.orderreshopmedia+json, application/vnd.goa.error

<a name="orderReshopRefundPost"></a>
# **orderReshopRefundPost**
> OrderReshopRefundMedia orderReshopRefundPost(Ag-Providers, payload)

Post OrderReshopRefund

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Ag-Providers** | **String**| Provider ID | [default to null] |
| **payload** | [**OrderReshopRefundPayload**](../Models/OrderReshopRefundPayload.md)|  | |

### Return type

[**OrderReshopRefundMedia**](../Models/OrderReshopRefundMedia.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml, application/gob, application/x-gob
- **Accept**: application/airgateway.github.io.orderreshoprefundmedia+json, application/vnd.goa.error

<a name="orderReshopRepricePost"></a>
# **orderReshopRepricePost**
> OrderReshopRepriceMedia orderReshopRepricePost(Ag-Providers, payload)

Post OrderReshopReprice

    OrderReshopReprice returns price for selected OrderReshop offer.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Ag-Providers** | **String**| Provider ID | [default to null] |
| **payload** | [**OrderReshopRepricePayload**](../Models/OrderReshopRepricePayload.md)|  | |

### Return type

[**OrderReshopRepriceMedia**](../Models/OrderReshopRepriceMedia.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml, application/gob, application/x-gob
- **Accept**: application/airgateway.github.io.orderreshoprepricemedia+json, application/vnd.goa.error

<a name="orderRetrievePost"></a>
# **orderRetrievePost**
> OrderCreateMedia orderRetrievePost(Ag-Providers, payload, Ag-No-Cache-OR)

Post OrderRetrieve

    OrderRetrieve returns an order information of existing order. 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Ag-Providers** | **String**| Provider ID | [default to null] |
| **payload** | [**OrderRetrievePayload**](../Models/OrderRetrievePayload.md)| OrderRetrievePayload is the type for OrderRetrieve endpoint request body | |
| **Ag-No-Cache-OR** | **String**| If this header is set to any value, the OrderRetrieve request will be forwarded to the airline and its respective reply will also come from the airline. In case you don&#39;t set it, the OrderRetrieve reply will be generated from the information cached locally. | [optional] [default to null] |

### Return type

[**OrderCreateMedia**](../Models/OrderCreateMedia.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml, application/gob, application/x-gob
- **Accept**: application/airgateway.github.io.ordercreatemedia+json, application/vnd.goa.error

<a name="orderUpdatePost"></a>
# **orderUpdatePost**
> OrderCreateMedia orderUpdatePost(Ag-Providers, payload)

Post OrderUpdate

    The OrderUpdate amends existing passengers details on order/PNR, and returns amended order details.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Ag-Providers** | **String**| Provider ID | [default to null] |
| **payload** | [**OrderUpdatePayload**](../Models/OrderUpdatePayload.md)|  | |

### Return type

[**OrderCreateMedia**](../Models/OrderCreateMedia.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml, application/gob, application/x-gob
- **Accept**: application/airgateway.github.io.ordercreatemedia+json, application/vnd.goa.error

<a name="seatAvailabilityPost"></a>
# **seatAvailabilityPost**
> SeatAvailabilityMedia seatAvailabilityPost(Ag-Providers, payload)

Post SeatAvailability

    SeatAvailability returns a list of seat, price of these seats, its location and some more info like, for example, if a seat can be occupied by infants or only adults.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Ag-Providers** | **String**| Provider ID | [default to null] |
| **payload** | [**SeatAvailabilityPayload**](../Models/SeatAvailabilityPayload.md)| SeatAvailability data | |

### Return type

[**SeatAvailabilityMedia**](../Models/SeatAvailabilityMedia.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml, application/gob, application/x-gob
- **Accept**: application/airgateway.github.io.seatavailabilitymedia+json, application/vnd.goa.error

<a name="serviceListPost"></a>
# **serviceListPost**
> ServiceListMedia serviceListPost(Ag-Providers, payload)

Post ServiceList

    ServiceList returns a service list information for existing order. 

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Ag-Providers** | **String**| Provider ID | [default to null] |
| **payload** | [**ServiceListPayload**](../Models/ServiceListPayload.md)| ServiceListPayload is the type for ServiceList endpoint request body | |

### Return type

[**ServiceListMedia**](../Models/ServiceListMedia.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml, application/gob, application/x-gob
- **Accept**: application/airgateway.github.io.servicelistmedia+json, application/vnd.goa.error

