/*
 * AirGateway NDC JSON API
 *
 * This API allows shopping and booking with IATA's New Distribution Capabilities (NDC) standard. It provides aggregated shopping capabilities (AirShopping), detailed offer description (OfferPrice), flight seat selection (SeatAvailability) and booking flight reservations (OrderCreate). Some fields in our API (when noticed) use the PADIS Standard v16.1. Find more information <a href=http://www.iata.org/whatwedo/workgroups/Pages/padis.aspx>here</a>
 *
 * API version: 1.2
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package swagger

type Ssr struct {

	BookingInstructions *BookingInstructions `json:"bookingInstructions,omitempty"`

	// Special service request code
	Code string `json:"code,omitempty"`

	// Special service request description
	Desc string `json:"desc,omitempty"`

	// Passenger type SSR applies to
	PassengerType string `json:"passengerType,omitempty"`

	// Special service request text required flag
	TextRequired bool `json:"text_required,omitempty"`
}
