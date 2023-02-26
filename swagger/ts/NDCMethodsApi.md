# .NDCMethodsApi

All URIs are relative to *https://proxy.airgateway.net/v1.2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**airDocIssuePost**](NDCMethodsApi.md#airDocIssuePost) | **POST** /AirDocIssue | Post AirDocIssue
[**airShoppingPost**](NDCMethodsApi.md#airShoppingPost) | **POST** /AirShopping | Post AirShopping
[**offerPricePost**](NDCMethodsApi.md#offerPricePost) | **POST** /OfferPrice | Post OfferPrice
[**orderCancelPost**](NDCMethodsApi.md#orderCancelPost) | **POST** /OrderCancel | Post OrderCancel
[**orderChangePost**](NDCMethodsApi.md#orderChangePost) | **POST** /OrderChange | Post OrderChange
[**orderCreatePost**](NDCMethodsApi.md#orderCreatePost) | **POST** /OrderCreate | Post OrderCreate
[**orderReshopPost**](NDCMethodsApi.md#orderReshopPost) | **POST** /OrderReshop | Post OrderReshop
[**orderReshopRefundPost**](NDCMethodsApi.md#orderReshopRefundPost) | **POST** /OrderReshopRefund | Post OrderReshopRefund
[**orderReshopRepricePost**](NDCMethodsApi.md#orderReshopRepricePost) | **POST** /OrderReshopReprice | Post OrderReshopReprice
[**orderRetrievePost**](NDCMethodsApi.md#orderRetrievePost) | **POST** /OrderRetrieve | Post OrderRetrieve
[**orderUpdatePost**](NDCMethodsApi.md#orderUpdatePost) | **POST** /OrderUpdate | Post OrderUpdate
[**seatAvailabilityPost**](NDCMethodsApi.md#seatAvailabilityPost) | **POST** /SeatAvailability | Post SeatAvailability
[**serviceListPost**](NDCMethodsApi.md#serviceListPost) | **POST** /ServiceList | Post ServiceList


# **airDocIssuePost**
> OrderCreateMedia airDocIssuePost(payload)

AirDocIssue the ability to pay for the held booking.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NDCMethodsApi(configuration);

let body:.NDCMethodsApiAirDocIssuePostRequest = {
  // string | Provider ID
  agProviders: "Ag-Providers_example",
  // AirDocIssuePayloadPayload
  payload: {
    id: "AGW-JHTE1543KJ",
    payment: {
      cardCode: "VI",
      cardHolderEmail: "smith@airgateway.com",
      cardHolderName: "John Smith",
      cardHolderSurname: "Smith",
      cardHolderTitle: "MR",
      cardNumber: "1234 1234 1234 1234",
      cardType: "Credit",
      cashEmail: "smith@airgateway.com",
      cashName: "John Smith",
      cashSurname: "Smith",
      cashTitle: "MR",
      cityName: "London",
      countryCode: "34",
      expiration: "0220",
      method: "card",
      passengerType: "ADT",
      phone: "+34666123123",
      postalCode: "001235",
      remark: "WP0000001101",
      seriesCode: "123",
      stateProv: "WA",
      street1: "Oxford Street",
      street2: "N15",
      voucher: {
        amount: 12.09,
        currency: "Aspernatur culpa eos.",
        email: "Distinctio quas et ipsam molestiae repellat.",
        number: "Id cum voluptas eius at.",
        surname: "Aspernatur mollitia officia temporibus.",
      },
    },
  },
};

apiInstance.airDocIssuePost(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | **AirDocIssuePayloadPayload**|  |
 **agProviders** | [**string**] | Provider ID | defaults to undefined


### Return type

**OrderCreateMedia**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.ordercreatemedia+json, application/vnd.goa.error


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |
**404** | Not Found |  -  |
**500** | Internal Server Error |  -  |
**503** | Service Unavailable |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **airShoppingPost**
> AirShoppingMedia airShoppingPost(payload)

Get a list of offers for provided O&D, dates and travelers.   There are three types of AirShopping request:<br> <b>(one-way)</b> -> For this airshopping, the array of OriginDestination´s must have only one element.</br>   <b>(round-trip)</b> -> For this airshopping, the array of OriginDestination´s must have only two elements, and the arrival of the second element must be the same that the departure of the first element.</br>   <b>(multi-city)</b> -> For this airshopping, the array of OriginDestination´s can have an unlimited quantity of elements.</br>   This method allows async behavior by sending <b>AG-Connection: keep-alive</b> header. If a request is received with this header, response will be real-time <a href=\"https://en.wikipedia.org/wiki/JSON_Streaming\">json streaming</a> so API will return offers as soon as they are received from providers and parsed. Streaming responses are line delimited JSON. You can <a href=\"https://api.airgateway.work/streaming-json-example.json\">see an example here</a>.</br>   If AG-Connection is not sent, all responses from providers will be parsed together (it will be slow since it needs to wait for all provider's responses) and there will be only a response with format specified here.<br>   As an additional header option you can control maximum request lifetime. Use <b>AG-Request-Timeout</b> header with integer number value in milliseconds.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NDCMethodsApi(configuration);

let body:.NDCMethodsApiAirShoppingPostRequest = {
  // string | Provider IDs list or * for all
  agProviders: "Ag-Providers_example",
  // AirShoppingPayload | AirShoppingPayload is the type for AirShopping endpoint request body
  payload: {
    corporateDiscountCodes: {},
    metadata: {
      country: "DE",
      currency: "EUR",
      locale: "de_DE",
    },
    originDestinations: [
      {
        arrival: {
          airportCode: "DME",
          date: "2019-10-15",
        },
        departure: {
          airportCode: "LHR",
          date: "2019-10-15",
        },
        type: "true",
      },
    ],
    preferences: {
      cabin: [5, 5, 5],
      discounts: {
        largeFamily: "F1",
        residentCode: "BR",
      },
      fare: {
        code: "70E",
        definition: "TO",
      },
      fareList: [
        {
          code: "70E",
          definition: "TO",
        },
      ],
      maxDuration: [PT3H50M, P1DT2H05M],
      maxDurationRatio: [3.5, 2],
      maxStops: [0, 2],
      nonStop: true,
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
  // string | Request max lifetime in seconds (optional)
  agRequestTimeout: "Ag-Request-Timeout_example",
};

apiInstance.airShoppingPost(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | **AirShoppingPayload**| AirShoppingPayload is the type for AirShopping endpoint request body |
 **agProviders** | [**string**] | Provider IDs list or * for all | defaults to undefined
 **agRequestTimeout** | [**string**] | Request max lifetime in seconds | (optional) defaults to undefined


### Return type

**AirShoppingMedia**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.airshoppingmedia+json, application/vnd.goa.error


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |
**500** | Internal Server Error |  -  |
**503** | Service Unavailable |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **offerPricePost**
> OfferPriceMedia offerPricePost(payload)

OfferPrice performs an specific detailed info query on a precise flight.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NDCMethodsApi(configuration);

let body:.NDCMethodsApiOfferPricePostRequest = {
  // string | Provider ID
  agProviders: "Ag-Providers_example",
  // OfferPricePayload
  payload: {
    offerID: "Qm9va2luZ0BaQXM5TXVRcASDATE9ySXNMa4FyYzVBMDAx",
    offerIDs: [000123123123, 0000123412341234],
    reshopOfferID: "6INlNkNo62eirnB3nqcbe3xaWoJYLsh5WiIOvws3cWylmR1AoxCL2rvLKZtfwbZV",
    services: [
      {
        action: "Cancel",
        owner: "LXA",
        quantity: 1.0,
        seatLocation: {
          column: "3",
          row: 13,
        },
        segmentReference: "IB625120180219",
        serviceID: "1234",
        text: "DOG",
        travelerReference: "485560180219",
        type: "service",
      },
    ],
  },
};

apiInstance.offerPricePost(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | **OfferPricePayload**|  |
 **agProviders** | [**string**] | Provider ID | defaults to undefined


### Return type

**OfferPriceMedia**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.flightpricemedia+json, application/vnd.goa.error


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |
**404** | Not Found |  -  |
**500** | Internal Server Error |  -  |
**503** | Service Unavailable |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **orderCancelPost**
> OrderCancelMedia orderCancelPost(payload)

OrderCancel returns cancelled order. 

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NDCMethodsApi(configuration);

let body:.NDCMethodsApiOrderCancelPostRequest = {
  // string | Provider ID
  agProviders: "Ag-Providers_example",
  // OrderCancelPayload
  payload: {
    id: "AGW-JHTE1543KJ",
  },
};

apiInstance.orderCancelPost(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | **OrderCancelPayload**|  |
 **agProviders** | [**string**] | Provider ID | defaults to undefined


### Return type

**OrderCancelMedia**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.ordercancelmedia+json, application/vnd.goa.error


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |
**404** | Not Found |  -  |
**500** | Internal Server Error |  -  |
**503** | Service Unavailable |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **orderChangePost**
> OrderCreateMedia orderChangePost(payload)

The OrderChange amends existing order/PNR, and returns amended order details.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NDCMethodsApi(configuration);

let body:.NDCMethodsApiOrderChangePostRequest = {
  // string | Provider ID
  agProviders: "Ag-Providers_example",
  // OrderChangePayload
  payload: {
    action: "split_order",
    id: "AGW-JHTE1543KJ",
    loyaltyProgramAccount: "Non rerum non accusantium.",
    passengerUpdate: {
      data: {
        address: {
          cityName: "Madrid",
          countryCode: "GB",
          postalCode: "28001",
          street: "Gran Via 25",
        },
        birthdate: "1970-01-01",
        email: "smith@airgateway.net",
        fqtvInfo: {
          account: {
            number: "23676950",
          },
          airlineID: "IB",
        },
        gender: "Female",
        name: "John",
        phone: "+34666123123",
        surname: "Smith",
        title: "MR",
      },
      document: {
        documentID: "115233245A",
        documentType: "PP",
        expirationDate: "2019-10-19",
      },
      fareBasisCodes: {},
      identity4Discount: [
        {
          identityDocumentNumber: "12313123111",
          identityDocumentType: "F1",
          remark: "070407",
        },
      ],
      infantReference: "INFANT_01",
      passengerType: "ADT",
      seats: [
        {
          characteristics: [
            {
              code: "LS",
              definition: "Left side of aircraft",
            },
          ],
          description: "Seat extra large",
          listKey: "SEAT_SERVICE_cddb2e0d-908f-4730-9604-c1f6b5e3b9c1_22A",
          location: {
            column: "3",
            row: 13,
          },
          passengerRefs: "ADT01",
          passengerType: "ADT",
          price: {
            consumer: {
              base: 0.5610847583788552,
              breakdown: [
                {
                  base: 300.32,
                  offerItemID: "389a5b6e6a464d958ba89a065724eb8b_01-1",
                  passengerRefs: "ADT0 ADT1",
                  passengerType: "ADT",
                  surcharge: 6.05,
                  tax: {
                    breakdown: [
                      {
                        code: "RA",
                        currency: "EUR",
                        description: "Carrier imposed charge",
                        total: 12.09,
                      },
                    ],
                    total: 0.6644082833940588,
                  },
                },
              ],
              currency: "At fugit ut.",
              surcharge: 6.05,
              tax: {
                breakdown: [
                  {
                    code: "RA",
                    currency: "EUR",
                    description: "Carrier imposed charge",
                    total: 12.09,
                  },
                ],
                total: 0.6644082833940588,
              },
              total: 0.5220538836897459,
            },
            provider: {
              base: 0.5610847583788552,
              breakdown: [
                {
                  base: 300.32,
                  offerItemID: "389a5b6e6a464d958ba89a065724eb8b_01-1",
                  passengerRefs: "ADT0 ADT1",
                  passengerType: "ADT",
                  surcharge: 6.05,
                  tax: {
                    breakdown: [
                      {
                        code: "RA",
                        currency: "EUR",
                        description: "Carrier imposed charge",
                        total: 12.09,
                      },
                    ],
                    total: 0.6644082833940588,
                  },
                },
              ],
              currency: "At fugit ut.",
              surcharge: 6.05,
              tax: {
                breakdown: [
                  {
                    code: "RA",
                    currency: "EUR",
                    description: "Carrier imposed charge",
                    total: 12.09,
                  },
                ],
                total: 0.6644082833940588,
              },
              total: 0.5220538836897459,
            },
          },
          refs: "SEAT_SERVICE_cddb2e0d-908f-4730-9604-c1f6b5e3b9c1",
          remarks: [Children not allowed],
          removable: true,
          segment: "IB625120180219",
        },
      ],
      services: [
        {
          action: "Cancel",
          owner: "LXA",
          quantity: 1.0,
          seatLocation: {
            column: "3",
            row: 13,
          },
          segmentReference: "IB625120180219",
          serviceID: "1234",
          text: "DOG",
          travelerReference: "485560180219",
          type: "service",
        },
      ],
      specialServices: [
        {
          bookingInstructions: {
            mandatoryText: "not_allowed",
            pattern: "[0-9]{1-3}",
            placeHolder: "Service Animal travelling in the cabin with Blind, Deaf, Disabled passengers or Certified Instructors. Specify breed and weight of animal",
            type: "number",
          },
          code: "WCBW",
          desc: "WHEELCHAIR - WET CELL BATTERY",
          passengerType: "ADT",
          textRequired: true,
        },
      ],
      travelerReference: "000123123",
    },
    passengers: [
      {
        data: {
          address: {
            cityName: "Madrid",
            countryCode: "GB",
            postalCode: "28001",
            street: "Gran Via 25",
          },
          birthdate: "1970-01-01",
          email: "smith@airgateway.net",
          fqtvInfo: {
            account: {
              number: "23676950",
            },
            airlineID: "IB",
          },
          gender: "Female",
          name: "John",
          phone: "+34666123123",
          surname: "Smith",
          title: "MR",
        },
        document: {
          documentID: "115233245A",
          documentType: "PP",
          expirationDate: "2019-10-19",
        },
        fareBasisCodes: {},
        identity4Discount: [
          {
            identityDocumentNumber: "12313123111",
            identityDocumentType: "F1",
            remark: "070407",
          },
        ],
        infantReference: "INFANT_01",
        passengerType: "ADT",
        seats: [
          {
            characteristics: [
              {
                code: "LS",
                definition: "Left side of aircraft",
              },
            ],
            description: "Seat extra large",
            listKey: "SEAT_SERVICE_cddb2e0d-908f-4730-9604-c1f6b5e3b9c1_22A",
            location: {
              column: "3",
              row: 13,
            },
            passengerRefs: "ADT01",
            passengerType: "ADT",
            price: {
              consumer: {
                base: 0.5610847583788552,
                breakdown: [
                  {
                    base: 300.32,
                    offerItemID: "389a5b6e6a464d958ba89a065724eb8b_01-1",
                    passengerRefs: "ADT0 ADT1",
                    passengerType: "ADT",
                    surcharge: 6.05,
                    tax: {
                      breakdown: [
                        {
                          code: "RA",
                          currency: "EUR",
                          description: "Carrier imposed charge",
                          total: 12.09,
                        },
                      ],
                      total: 0.6644082833940588,
                    },
                  },
                ],
                currency: "At fugit ut.",
                surcharge: 6.05,
                tax: {
                  breakdown: [
                    {
                      code: "RA",
                      currency: "EUR",
                      description: "Carrier imposed charge",
                      total: 12.09,
                    },
                  ],
                  total: 0.6644082833940588,
                },
                total: 0.5220538836897459,
              },
              provider: {
                base: 0.5610847583788552,
                breakdown: [
                  {
                    base: 300.32,
                    offerItemID: "389a5b6e6a464d958ba89a065724eb8b_01-1",
                    passengerRefs: "ADT0 ADT1",
                    passengerType: "ADT",
                    surcharge: 6.05,
                    tax: {
                      breakdown: [
                        {
                          code: "RA",
                          currency: "EUR",
                          description: "Carrier imposed charge",
                          total: 12.09,
                        },
                      ],
                      total: 0.6644082833940588,
                    },
                  },
                ],
                currency: "At fugit ut.",
                surcharge: 6.05,
                tax: {
                  breakdown: [
                    {
                      code: "RA",
                      currency: "EUR",
                      description: "Carrier imposed charge",
                      total: 12.09,
                    },
                  ],
                  total: 0.6644082833940588,
                },
                total: 0.5220538836897459,
              },
            },
            refs: "SEAT_SERVICE_cddb2e0d-908f-4730-9604-c1f6b5e3b9c1",
            remarks: [Children not allowed],
            removable: true,
            segment: "IB625120180219",
          },
        ],
        services: [
          {
            action: "Cancel",
            owner: "LXA",
            quantity: 1.0,
            seatLocation: {
              column: "3",
              row: 13,
            },
            segmentReference: "IB625120180219",
            serviceID: "1234",
            text: "DOG",
            travelerReference: "485560180219",
            type: "service",
          },
        ],
        specialServices: [
          {
            bookingInstructions: {
              mandatoryText: "not_allowed",
              pattern: "[0-9]{1-3}",
              placeHolder: "Service Animal travelling in the cabin with Blind, Deaf, Disabled passengers or Certified Instructors. Specify breed and weight of animal",
              type: "number",
            },
            code: "WCBW",
            desc: "WHEELCHAIR - WET CELL BATTERY",
            passengerType: "ADT",
            textRequired: true,
          },
        ],
        travelerReference: "000123123",
      },
    ],
    payment: {
      cardCode: "VI",
      cardHolderEmail: "smith@airgateway.com",
      cardHolderName: "John Smith",
      cardHolderSurname: "Smith",
      cardHolderTitle: "MR",
      cardNumber: "1234 1234 1234 1234",
      cardType: "Credit",
      cashEmail: "smith@airgateway.com",
      cashName: "John Smith",
      cashSurname: "Smith",
      cashTitle: "MR",
      cityName: "London",
      countryCode: "34",
      expiration: "0220",
      method: "card",
      passengerType: "ADT",
      phone: "+34666123123",
      postalCode: "001235",
      remark: "WP0000001101",
      seriesCode: "123",
      stateProv: "WA",
      street1: "Oxford Street",
      street2: "N15",
      voucher: {
        amount: 12.09,
        currency: "Aspernatur culpa eos.",
        email: "Distinctio quas et ipsam molestiae repellat.",
        number: "Id cum voluptas eius at.",
        surname: "Aspernatur mollitia officia temporibus.",
      },
    },
    reshopOfferID: "OFFER-454JD07N00INPGFI3KPBK3UGODHWKTXX04INXL738ZJ47E3KUFTOYBV8MQ9LLONH",
    services: [
      {
        action: "Cancel",
        owner: "LXA",
        quantity: 1.0,
        seatLocation: {
          column: "3",
          row: 13,
        },
        segmentReference: "IB625120180219",
        serviceID: "1234",
        text: "DOG",
        travelerReference: "485560180219",
        type: "service",
      },
    ],
  },
};

apiInstance.orderChangePost(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | **OrderChangePayload**|  |
 **agProviders** | [**string**] | Provider ID | defaults to undefined


### Return type

**OrderCreateMedia**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.ordercreatemedia+json, application/vnd.goa.error


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |
**404** | Not Found |  -  |
**500** | Internal Server Error |  -  |
**503** | Service Unavailable |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **orderCreatePost**
> OrderCreateMedia orderCreatePost(payload)

The OrderCreate makes a purchase request for the selected flight, and returns an OrderID (some providers also return a PNR), along with some flight data, such as the Origins-Destinations listing or the passenger list.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NDCMethodsApi(configuration);

let body:.NDCMethodsApiOrderCreatePostRequest = {
  // string | Provider ID
  agProviders: "Ag-Providers_example",
  // OrderCreatePayload
  payload: {
    corporateID: "In sunt ea id voluptas.",
    loyaltyProgramAccount: "Nam est sed et sint officiis.",
    metas: {},
    passengers: [
      {
        data: {
          address: {
            cityName: "Madrid",
            countryCode: "GB",
            postalCode: "28001",
            street: "Gran Via 25",
          },
          birthdate: "1970-01-01",
          email: "smith@airgateway.net",
          fqtvInfo: {
            account: {
              number: "23676950",
            },
            airlineID: "IB",
          },
          gender: "Female",
          name: "John",
          phone: "+34666123123",
          surname: "Smith",
          title: "MR",
        },
        document: {
          documentID: "115233245A",
          documentType: "PP",
          expirationDate: "2019-10-19",
        },
        fareBasisCodes: {},
        identity4Discount: [
          {
            identityDocumentNumber: "12313123111",
            identityDocumentType: "F1",
            remark: "070407",
          },
        ],
        infantReference: "INFANT_01",
        passengerType: "ADT",
        seats: [
          {
            characteristics: [
              {
                code: "LS",
                definition: "Left side of aircraft",
              },
            ],
            description: "Seat extra large",
            listKey: "SEAT_SERVICE_cddb2e0d-908f-4730-9604-c1f6b5e3b9c1_22A",
            location: {
              column: "3",
              row: 13,
            },
            passengerRefs: "ADT01",
            passengerType: "ADT",
            price: {
              consumer: {
                base: 0.5610847583788552,
                breakdown: [
                  {
                    base: 300.32,
                    offerItemID: "389a5b6e6a464d958ba89a065724eb8b_01-1",
                    passengerRefs: "ADT0 ADT1",
                    passengerType: "ADT",
                    surcharge: 6.05,
                    tax: {
                      breakdown: [
                        {
                          code: "RA",
                          currency: "EUR",
                          description: "Carrier imposed charge",
                          total: 12.09,
                        },
                      ],
                      total: 0.6644082833940588,
                    },
                  },
                ],
                currency: "At fugit ut.",
                surcharge: 6.05,
                tax: {
                  breakdown: [
                    {
                      code: "RA",
                      currency: "EUR",
                      description: "Carrier imposed charge",
                      total: 12.09,
                    },
                  ],
                  total: 0.6644082833940588,
                },
                total: 0.5220538836897459,
              },
              provider: {
                base: 0.5610847583788552,
                breakdown: [
                  {
                    base: 300.32,
                    offerItemID: "389a5b6e6a464d958ba89a065724eb8b_01-1",
                    passengerRefs: "ADT0 ADT1",
                    passengerType: "ADT",
                    surcharge: 6.05,
                    tax: {
                      breakdown: [
                        {
                          code: "RA",
                          currency: "EUR",
                          description: "Carrier imposed charge",
                          total: 12.09,
                        },
                      ],
                      total: 0.6644082833940588,
                    },
                  },
                ],
                currency: "At fugit ut.",
                surcharge: 6.05,
                tax: {
                  breakdown: [
                    {
                      code: "RA",
                      currency: "EUR",
                      description: "Carrier imposed charge",
                      total: 12.09,
                    },
                  ],
                  total: 0.6644082833940588,
                },
                total: 0.5220538836897459,
              },
            },
            refs: "SEAT_SERVICE_cddb2e0d-908f-4730-9604-c1f6b5e3b9c1",
            remarks: [Children not allowed],
            removable: true,
            segment: "IB625120180219",
          },
        ],
        services: [
          {
            action: "Cancel",
            owner: "LXA",
            quantity: 1.0,
            seatLocation: {
              column: "3",
              row: 13,
            },
            segmentReference: "IB625120180219",
            serviceID: "1234",
            text: "DOG",
            travelerReference: "485560180219",
            type: "service",
          },
        ],
        specialServices: [
          {
            bookingInstructions: {
              mandatoryText: "not_allowed",
              pattern: "[0-9]{1-3}",
              placeHolder: "Service Animal travelling in the cabin with Blind, Deaf, Disabled passengers or Certified Instructors. Specify breed and weight of animal",
              type: "number",
            },
            code: "WCBW",
            desc: "WHEELCHAIR - WET CELL BATTERY",
            passengerType: "ADT",
            textRequired: true,
          },
        ],
        travelerReference: "000123123",
      },
    ],
    payment: {
      cardCode: "VI",
      cardHolderEmail: "smith@airgateway.com",
      cardHolderName: "John Smith",
      cardHolderSurname: "Smith",
      cardHolderTitle: "MR",
      cardNumber: "1234 1234 1234 1234",
      cardType: "Credit",
      cashEmail: "smith@airgateway.com",
      cashName: "John Smith",
      cashSurname: "Smith",
      cashTitle: "MR",
      cityName: "London",
      countryCode: "34",
      expiration: "0220",
      method: "card",
      passengerType: "ADT",
      phone: "+34666123123",
      postalCode: "001235",
      remark: "WP0000001101",
      seriesCode: "123",
      stateProv: "WA",
      street1: "Oxford Street",
      street2: "N15",
      voucher: {
        amount: 12.09,
        currency: "Aspernatur culpa eos.",
        email: "Distinctio quas et ipsam molestiae repellat.",
        number: "Id cum voluptas eius at.",
        surname: "Aspernatur mollitia officia temporibus.",
      },
    },
    remarks: {
      data: {
        template: "multiline template",
        variables: {},
      },
      result: "Cum perspiciatis aliquid quisquam.",
    },
    shoppingResponseID: "6INlNkNo62eirnB3nqcbe3xaWoJYLsh5WiIOvws3cWylmR1AoxCL2rvLKZtfwbZV",
  },
};

apiInstance.orderCreatePost(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | **OrderCreatePayload**|  |
 **agProviders** | [**string**] | Provider ID | defaults to undefined


### Return type

**OrderCreateMedia**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.ordercreatemedia+json, application/vnd.goa.error


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |
**404** | Not Found |  -  |
**500** | Internal Server Error |  -  |
**503** | Service Unavailable |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **orderReshopPost**
> OrderReshopMedia orderReshopPost(payload)

OrderReshop returns offers avaialble for provided order ID and different date.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NDCMethodsApi(configuration);

let body:.NDCMethodsApiOrderReshopPostRequest = {
  // string | Provider ID
  agProviders: "Ag-Providers_example",
  // OrderReshopPayload
  payload: {
    id: "AGW-JHTE1543KJ",
    originDestinations: [
      {
        arrival: {
          airportCode: "DME",
          date: "2019-10-15",
        },
        departure: {
          airportCode: "LHR",
          date: "2019-10-15",
        },
        type: "true",
      },
    ],
    preferences: {
      cabin: [5],
      discounts: {
        largeFamily: "F1",
        residentCode: "BR",
      },
      fare: {
        code: "70E",
        definition: "TO",
      },
      fareList: [
        {
          code: "70E",
          definition: "TO",
        },
      ],
      nonStop: true,
    },
  },
};

apiInstance.orderReshopPost(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | **OrderReshopPayload**|  |
 **agProviders** | [**string**] | Provider ID | defaults to undefined


### Return type

**OrderReshopMedia**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.orderreshopmedia+json, application/vnd.goa.error


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |
**404** | Not Found |  -  |
**500** | Internal Server Error |  -  |
**503** | Service Unavailable |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **orderReshopRefundPost**
> OrderReshopRefundMedia orderReshopRefundPost(payload)


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NDCMethodsApi(configuration);

let body:.NDCMethodsApiOrderReshopRefundPostRequest = {
  // string | Provider ID
  agProviders: "Ag-Providers_example",
  // OrderReshopRefundPayload
  payload: {
    id: "AGW-JHTE1543KJ",
    type: "Atque in tempore tenetur nihil culpa.",
  },
};

apiInstance.orderReshopRefundPost(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | **OrderReshopRefundPayload**|  |
 **agProviders** | [**string**] | Provider ID | defaults to undefined


### Return type

**OrderReshopRefundMedia**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.orderreshoprefundmedia+json, application/vnd.goa.error


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |
**404** | Not Found |  -  |
**500** | Internal Server Error |  -  |
**503** | Service Unavailable |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **orderReshopRepricePost**
> OrderReshopRepriceMedia orderReshopRepricePost(payload)

OrderReshopReprice returns price for selected OrderReshop offer.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NDCMethodsApi(configuration);

let body:.NDCMethodsApiOrderReshopRepricePostRequest = {
  // string | Provider ID
  agProviders: "Ag-Providers_example",
  // OrderReshopRepricePayload
  payload: {
    id: "AGW-JHTE1543KJ",
    offerID: "OFFER-454JD07N00INPGFI3KPBK3UGODHWKTXX04INXL738ZJ47E3KUFTOYBV8MQ9LLONH",
  },
};

apiInstance.orderReshopRepricePost(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | **OrderReshopRepricePayload**|  |
 **agProviders** | [**string**] | Provider ID | defaults to undefined


### Return type

**OrderReshopRepriceMedia**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.orderreshoprepricemedia+json, application/vnd.goa.error


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |
**404** | Not Found |  -  |
**500** | Internal Server Error |  -  |
**503** | Service Unavailable |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **orderRetrievePost**
> OrderCreateMedia orderRetrievePost(payload)

OrderRetrieve returns an order information of existing order. 

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NDCMethodsApi(configuration);

let body:.NDCMethodsApiOrderRetrievePostRequest = {
  // string | Provider ID
  agProviders: "Ag-Providers_example",
  // OrderRetrievePayload | OrderRetrievePayload is the type for OrderRetrieve endpoint request body
  payload: {
    id: "AGW-JHTE1543KJ",
  },
  // string | If this header is set to any value, the OrderRetrieve request will be forwarded to the airline and its respective reply will also come from the airline. In case you don't set it, the OrderRetrieve reply will be generated from the information cached locally. (optional)
  agNoCacheOR: "Ag-No-Cache-OR_example",
};

apiInstance.orderRetrievePost(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | **OrderRetrievePayload**| OrderRetrievePayload is the type for OrderRetrieve endpoint request body |
 **agProviders** | [**string**] | Provider ID | defaults to undefined
 **agNoCacheOR** | [**string**] | If this header is set to any value, the OrderRetrieve request will be forwarded to the airline and its respective reply will also come from the airline. In case you don&#39;t set it, the OrderRetrieve reply will be generated from the information cached locally. | (optional) defaults to undefined


### Return type

**OrderCreateMedia**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.ordercreatemedia+json, application/vnd.goa.error


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**404** | Not Found |  -  |
**500** | Internal Server Error |  -  |
**503** | Service Unavailable |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **orderUpdatePost**
> OrderCreateMedia orderUpdatePost(payload)

The OrderUpdate amends existing passengers details on order/PNR, and returns amended order details.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NDCMethodsApi(configuration);

let body:.NDCMethodsApiOrderUpdatePostRequest = {
  // string | Provider ID
  agProviders: "Ag-Providers_example",
  // OrderUpdatePayload
  payload: {
    action: "name_correction",
    id: "AGW-JHTE1543KJ",
    passengersUpdate: [
      {
        data: {
          address: {
            cityName: "Madrid",
            countryCode: "GB",
            postalCode: "28001",
            street: "Gran Via 25",
          },
          birthdate: "1970-01-01",
          email: "smith@airgateway.net",
          fqtvInfo: {
            account: {
              number: "23676950",
            },
            airlineID: "IB",
          },
          gender: "Female",
          name: "John",
          phone: "+34666123123",
          surname: "Smith",
          title: "MR",
        },
        document: {
          documentID: "115233245A",
          documentType: "PP",
          expirationDate: "2019-10-19",
        },
        fareBasisCodes: {},
        identity4Discount: [
          {
            identityDocumentNumber: "12313123111",
            identityDocumentType: "F1",
            remark: "070407",
          },
        ],
        infantReference: "INFANT_01",
        passengerType: "ADT",
        seats: [
          {
            characteristics: [
              {
                code: "LS",
                definition: "Left side of aircraft",
              },
            ],
            description: "Seat extra large",
            listKey: "SEAT_SERVICE_cddb2e0d-908f-4730-9604-c1f6b5e3b9c1_22A",
            location: {
              column: "3",
              row: 13,
            },
            passengerRefs: "ADT01",
            passengerType: "ADT",
            price: {
              consumer: {
                base: 0.5610847583788552,
                breakdown: [
                  {
                    base: 300.32,
                    offerItemID: "389a5b6e6a464d958ba89a065724eb8b_01-1",
                    passengerRefs: "ADT0 ADT1",
                    passengerType: "ADT",
                    surcharge: 6.05,
                    tax: {
                      breakdown: [
                        {
                          code: "RA",
                          currency: "EUR",
                          description: "Carrier imposed charge",
                          total: 12.09,
                        },
                      ],
                      total: 0.6644082833940588,
                    },
                  },
                ],
                currency: "At fugit ut.",
                surcharge: 6.05,
                tax: {
                  breakdown: [
                    {
                      code: "RA",
                      currency: "EUR",
                      description: "Carrier imposed charge",
                      total: 12.09,
                    },
                  ],
                  total: 0.6644082833940588,
                },
                total: 0.5220538836897459,
              },
              provider: {
                base: 0.5610847583788552,
                breakdown: [
                  {
                    base: 300.32,
                    offerItemID: "389a5b6e6a464d958ba89a065724eb8b_01-1",
                    passengerRefs: "ADT0 ADT1",
                    passengerType: "ADT",
                    surcharge: 6.05,
                    tax: {
                      breakdown: [
                        {
                          code: "RA",
                          currency: "EUR",
                          description: "Carrier imposed charge",
                          total: 12.09,
                        },
                      ],
                      total: 0.6644082833940588,
                    },
                  },
                ],
                currency: "At fugit ut.",
                surcharge: 6.05,
                tax: {
                  breakdown: [
                    {
                      code: "RA",
                      currency: "EUR",
                      description: "Carrier imposed charge",
                      total: 12.09,
                    },
                  ],
                  total: 0.6644082833940588,
                },
                total: 0.5220538836897459,
              },
            },
            refs: "SEAT_SERVICE_cddb2e0d-908f-4730-9604-c1f6b5e3b9c1",
            remarks: [Children not allowed],
            removable: true,
            segment: "IB625120180219",
          },
        ],
        services: [
          {
            action: "Cancel",
            owner: "LXA",
            quantity: 1.0,
            seatLocation: {
              column: "3",
              row: 13,
            },
            segmentReference: "IB625120180219",
            serviceID: "1234",
            text: "DOG",
            travelerReference: "485560180219",
            type: "service",
          },
        ],
        specialServices: [
          {
            bookingInstructions: {
              mandatoryText: "not_allowed",
              pattern: "[0-9]{1-3}",
              placeHolder: "Service Animal travelling in the cabin with Blind, Deaf, Disabled passengers or Certified Instructors. Specify breed and weight of animal",
              type: "number",
            },
            code: "WCBW",
            desc: "WHEELCHAIR - WET CELL BATTERY",
            passengerType: "ADT",
            textRequired: true,
          },
        ],
        travelerReference: "000123123",
      },
    ],
  },
};

apiInstance.orderUpdatePost(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | **OrderUpdatePayload**|  |
 **agProviders** | [**string**] | Provider ID | defaults to undefined


### Return type

**OrderCreateMedia**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.ordercreatemedia+json, application/vnd.goa.error


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |
**404** | Not Found |  -  |
**500** | Internal Server Error |  -  |
**503** | Service Unavailable |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **seatAvailabilityPost**
> SeatAvailabilityMedia seatAvailabilityPost(payload)

SeatAvailability returns a list of seat, price of these seats, its location and some more info like, for example, if a seat can be occupied by infants or only adults.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NDCMethodsApi(configuration);

let body:.NDCMethodsApiSeatAvailabilityPostRequest = {
  // string | Provider ID
  agProviders: "Ag-Providers_example",
  // SeatAvailabilityPayload | SeatAvailability data
  payload: {
    id: "AGW-JHTE1543KJ",
    passengers: [
      {
        data: {
          address: {
            cityName: "Madrid",
            countryCode: "GB",
            postalCode: "28001",
            street: "Gran Via 25",
          },
          birthdate: "1970-01-01",
          email: "smith@airgateway.net",
          fqtvInfo: {
            account: {
              number: "23676950",
            },
            airlineID: "IB",
          },
          gender: "Female",
          name: "John",
          phone: "+34666123123",
          surname: "Smith",
          title: "MR",
        },
        document: {
          documentID: "115233245A",
          documentType: "PP",
          expirationDate: "2019-10-19",
        },
        fareBasisCodes: {},
        identity4Discount: [
          {
            identityDocumentNumber: "12313123111",
            identityDocumentType: "F1",
            remark: "070407",
          },
        ],
        infantReference: "INFANT_01",
        passengerType: "ADT",
        seats: [
          {
            characteristics: [
              {
                code: "LS",
                definition: "Left side of aircraft",
              },
            ],
            description: "Seat extra large",
            listKey: "SEAT_SERVICE_cddb2e0d-908f-4730-9604-c1f6b5e3b9c1_22A",
            location: {
              column: "3",
              row: 13,
            },
            passengerRefs: "ADT01",
            passengerType: "ADT",
            price: {
              consumer: {
                base: 0.5610847583788552,
                breakdown: [
                  {
                    base: 300.32,
                    offerItemID: "389a5b6e6a464d958ba89a065724eb8b_01-1",
                    passengerRefs: "ADT0 ADT1",
                    passengerType: "ADT",
                    surcharge: 6.05,
                    tax: {
                      breakdown: [
                        {
                          code: "RA",
                          currency: "EUR",
                          description: "Carrier imposed charge",
                          total: 12.09,
                        },
                      ],
                      total: 0.6644082833940588,
                    },
                  },
                ],
                currency: "At fugit ut.",
                surcharge: 6.05,
                tax: {
                  breakdown: [
                    {
                      code: "RA",
                      currency: "EUR",
                      description: "Carrier imposed charge",
                      total: 12.09,
                    },
                  ],
                  total: 0.6644082833940588,
                },
                total: 0.5220538836897459,
              },
              provider: {
                base: 0.5610847583788552,
                breakdown: [
                  {
                    base: 300.32,
                    offerItemID: "389a5b6e6a464d958ba89a065724eb8b_01-1",
                    passengerRefs: "ADT0 ADT1",
                    passengerType: "ADT",
                    surcharge: 6.05,
                    tax: {
                      breakdown: [
                        {
                          code: "RA",
                          currency: "EUR",
                          description: "Carrier imposed charge",
                          total: 12.09,
                        },
                      ],
                      total: 0.6644082833940588,
                    },
                  },
                ],
                currency: "At fugit ut.",
                surcharge: 6.05,
                tax: {
                  breakdown: [
                    {
                      code: "RA",
                      currency: "EUR",
                      description: "Carrier imposed charge",
                      total: 12.09,
                    },
                  ],
                  total: 0.6644082833940588,
                },
                total: 0.5220538836897459,
              },
            },
            refs: "SEAT_SERVICE_cddb2e0d-908f-4730-9604-c1f6b5e3b9c1",
            remarks: [Children not allowed],
            removable: true,
            segment: "IB625120180219",
          },
        ],
        services: [
          {
            action: "Cancel",
            owner: "LXA",
            quantity: 1.0,
            seatLocation: {
              column: "3",
              row: 13,
            },
            segmentReference: "IB625120180219",
            serviceID: "1234",
            text: "DOG",
            travelerReference: "485560180219",
            type: "service",
          },
        ],
        specialServices: [
          {
            bookingInstructions: {
              mandatoryText: "not_allowed",
              pattern: "[0-9]{1-3}",
              placeHolder: "Service Animal travelling in the cabin with Blind, Deaf, Disabled passengers or Certified Instructors. Specify breed and weight of animal",
              type: "number",
            },
            code: "WCBW",
            desc: "WHEELCHAIR - WET CELL BATTERY",
            passengerType: "ADT",
            textRequired: true,
          },
        ],
        travelerReference: "000123123",
      },
    ],
    reshopOfferID: "6INlNkNo62eirnB3nqcbe3xaWoJYLsh5WiIOvws3cWylmR1AoxCL2rvLKZtfwbZV",
    segmentID: "IB625120180217",
    shoppingResponseID: "6INlNkNo62eirnB3nqcbe3xaWoJYLsh5WiIOvws3cWylmR1AoxCL2rvLKZtfwbZV",
  },
};

apiInstance.seatAvailabilityPost(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | **SeatAvailabilityPayload**| SeatAvailability data |
 **agProviders** | [**string**] | Provider ID | defaults to undefined


### Return type

**SeatAvailabilityMedia**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.seatavailabilitymedia+json, application/vnd.goa.error


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |
**404** | Not Found |  -  |
**500** | Internal Server Error |  -  |
**503** | Service Unavailable |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **serviceListPost**
> ServiceListMedia serviceListPost(payload)

ServiceList returns a service list information for existing order. 

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NDCMethodsApi(configuration);

let body:.NDCMethodsApiServiceListPostRequest = {
  // string | Provider ID
  agProviders: "Ag-Providers_example",
  // ServiceListPayload | ServiceListPayload is the type for ServiceList endpoint request body
  payload: {
    id: "AGW-JHTE1543KJ",
    passengers: [
      {
        data: {
          address: {
            cityName: "Madrid",
            countryCode: "GB",
            postalCode: "28001",
            street: "Gran Via 25",
          },
          birthdate: "1970-01-01",
          email: "smith@airgateway.net",
          fqtvInfo: {
            account: {
              number: "23676950",
            },
            airlineID: "IB",
          },
          gender: "Female",
          name: "John",
          phone: "+34666123123",
          surname: "Smith",
          title: "MR",
        },
        document: {
          documentID: "115233245A",
          documentType: "PP",
          expirationDate: "2019-10-19",
        },
        fareBasisCodes: {},
        identity4Discount: [
          {
            identityDocumentNumber: "12313123111",
            identityDocumentType: "F1",
            remark: "070407",
          },
        ],
        infantReference: "INFANT_01",
        passengerType: "ADT",
        seats: [
          {
            characteristics: [
              {
                code: "LS",
                definition: "Left side of aircraft",
              },
            ],
            description: "Seat extra large",
            listKey: "SEAT_SERVICE_cddb2e0d-908f-4730-9604-c1f6b5e3b9c1_22A",
            location: {
              column: "3",
              row: 13,
            },
            passengerRefs: "ADT01",
            passengerType: "ADT",
            price: {
              consumer: {
                base: 0.5610847583788552,
                breakdown: [
                  {
                    base: 300.32,
                    offerItemID: "389a5b6e6a464d958ba89a065724eb8b_01-1",
                    passengerRefs: "ADT0 ADT1",
                    passengerType: "ADT",
                    surcharge: 6.05,
                    tax: {
                      breakdown: [
                        {
                          code: "RA",
                          currency: "EUR",
                          description: "Carrier imposed charge",
                          total: 12.09,
                        },
                      ],
                      total: 0.6644082833940588,
                    },
                  },
                ],
                currency: "At fugit ut.",
                surcharge: 6.05,
                tax: {
                  breakdown: [
                    {
                      code: "RA",
                      currency: "EUR",
                      description: "Carrier imposed charge",
                      total: 12.09,
                    },
                  ],
                  total: 0.6644082833940588,
                },
                total: 0.5220538836897459,
              },
              provider: {
                base: 0.5610847583788552,
                breakdown: [
                  {
                    base: 300.32,
                    offerItemID: "389a5b6e6a464d958ba89a065724eb8b_01-1",
                    passengerRefs: "ADT0 ADT1",
                    passengerType: "ADT",
                    surcharge: 6.05,
                    tax: {
                      breakdown: [
                        {
                          code: "RA",
                          currency: "EUR",
                          description: "Carrier imposed charge",
                          total: 12.09,
                        },
                      ],
                      total: 0.6644082833940588,
                    },
                  },
                ],
                currency: "At fugit ut.",
                surcharge: 6.05,
                tax: {
                  breakdown: [
                    {
                      code: "RA",
                      currency: "EUR",
                      description: "Carrier imposed charge",
                      total: 12.09,
                    },
                  ],
                  total: 0.6644082833940588,
                },
                total: 0.5220538836897459,
              },
            },
            refs: "SEAT_SERVICE_cddb2e0d-908f-4730-9604-c1f6b5e3b9c1",
            remarks: [Children not allowed],
            removable: true,
            segment: "IB625120180219",
          },
        ],
        services: [
          {
            action: "Cancel",
            owner: "LXA",
            quantity: 1.0,
            seatLocation: {
              column: "3",
              row: 13,
            },
            segmentReference: "IB625120180219",
            serviceID: "1234",
            text: "DOG",
            travelerReference: "485560180219",
            type: "service",
          },
        ],
        specialServices: [
          {
            bookingInstructions: {
              mandatoryText: "not_allowed",
              pattern: "[0-9]{1-3}",
              placeHolder: "Service Animal travelling in the cabin with Blind, Deaf, Disabled passengers or Certified Instructors. Specify breed and weight of animal",
              type: "number",
            },
            code: "WCBW",
            desc: "WHEELCHAIR - WET CELL BATTERY",
            passengerType: "ADT",
            textRequired: true,
          },
        ],
        travelerReference: "000123123",
      },
    ],
    reshopOfferID: "6INlNkNo62eirnB3nqcbe3xaWoJYLsh5WiIOvws3cWylmR1AoxCL2rvLKZtfwbZV",
    shoppingResponseID: "6INlNkNo62eirnB3nqcbe3xaWoJYLsh5WiIOvws3cWylmR1AoxCL2rvLKZtfwbZV",
  },
};

apiInstance.serviceListPost(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | **ServiceListPayload**| ServiceListPayload is the type for ServiceList endpoint request body |
 **agProviders** | [**string**] | Provider ID | defaults to undefined


### Return type

**ServiceListMedia**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml, application/gob, application/x-gob
 - **Accept**: application/airgateway.github.io.servicelistmedia+json, application/vnd.goa.error


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**404** | Not Found |  -  |
**500** | Internal Server Error |  -  |
**503** | Service Unavailable |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


