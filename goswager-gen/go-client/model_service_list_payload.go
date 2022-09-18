/*
 * AirGateway NDC JSON API
 *
 * This API allows shopping and booking with IATA's New Distribution Capabilities (NDC) standard. It provides aggregated shopping capabilities (AirShopping), detailed offer description (OfferPrice), flight seat selection (SeatAvailability) and booking flight reservations (OrderCreate). Some fields in our API (when noticed) use the PADIS Standard v16.1. Find more information <a href=http://www.iata.org/whatwedo/workgroups/Pages/padis.aspx>here</a>
 *
 * API version: 1.2
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package swagger

// ServiceListPayload is the type for ServiceList endpoint request body
type ServiceListPayload struct {
	// AirGateway order ID
	Id string `json:"id,omitempty"`
	Passengers []Passenger `json:"passengers,omitempty"`
	// The offerID provided in OrderReshopReprice response on the rebooking process. Used when request ServiceList is called on the rebooking stage and order has services.
	ReshopOfferID string `json:"reshopOfferID,omitempty"`
	// The responseID provided in OfferPrice response. Use when request ServiceList on Pre-Booking stage
	ShoppingResponseID string `json:"shoppingResponseID,omitempty"`
}
