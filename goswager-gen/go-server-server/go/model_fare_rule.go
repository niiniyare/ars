/*
 * AirGateway NDC JSON API
 *
 * This API allows shopping and booking with IATA's New Distribution Capabilities (NDC) standard. It provides aggregated shopping capabilities (AirShopping), detailed offer description (OfferPrice), flight seat selection (SeatAvailability) and booking flight reservations (OrderCreate). Some fields in our API (when noticed) use the PADIS Standard v16.1. Find more information <a href=http://www.iata.org/whatwedo/workgroups/Pages/padis.aspx>here</a>
 *
 * API version: 1.2
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package swagger

// Fare Rules per segment and per each passenger type.
type FareRule struct {

	// The fare rule for the cancelability.
	Cancel string `json:"cancel,omitempty"`

	// The fare rule for the cancelability with a very structure format.
	CancelEnum string `json:"cancelEnum,omitempty"`

	// The fare rule for the changeability.
	Change string `json:"change,omitempty"`

	// The fare rule for the changeability with a very structure format.
	ChangeEnum string `json:"changeEnum,omitempty"`

	// The references tot the passengers involved in the group of FareReules.
	PassengerRef string `json:"passengerRef,omitempty"`

	// The type of the passengers related to this group of FareRule.
	PassengerType string `json:"passengerType,omitempty"`

	// Fare rule penalties.
	Penalties []Penalty `json:"penalties,omitempty"`
}