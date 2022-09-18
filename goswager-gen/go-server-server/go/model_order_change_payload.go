/*
 * AirGateway NDC JSON API
 *
 * This API allows shopping and booking with IATA's New Distribution Capabilities (NDC) standard. It provides aggregated shopping capabilities (AirShopping), detailed offer description (OfferPrice), flight seat selection (SeatAvailability) and booking flight reservations (OrderCreate). Some fields in our API (when noticed) use the PADIS Standard v16.1. Find more information <a href=http://www.iata.org/whatwedo/workgroups/Pages/padis.aspx>here</a>
 *
 * API version: 1.2
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package swagger

type OrderChangePayload struct {

	// A flag used in some cases of the OrderChange like accept the disruption of an order or split the order
	Action string `json:"action,omitempty"`

	// AirGateway order ID
	Id string `json:"id"`

	// Loyalty program account number for corporates
	LoyaltyProgramAccount string `json:"loyaltyProgramAccount,omitempty"`

	PassengerUpdate *Passenger `json:"passengerUpdate,omitempty"`

	// List of passengers
	Passengers []Passenger `json:"passengers,omitempty"`

	Payment *Payment `json:"payment,omitempty"`

	// Reshop offer ID from OrderReshop response
	ReshopOfferID string `json:"reshopOfferID,omitempty"`

	// List of service objects
	Services []ServiceRequest `json:"services,omitempty"`
}