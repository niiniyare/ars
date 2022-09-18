/*
 * AirGateway NDC JSON API
 *
 * This API allows shopping and booking with IATA's New Distribution Capabilities (NDC) standard. It provides aggregated shopping capabilities (AirShopping), detailed offer description (OfferPrice), flight seat selection (SeatAvailability) and booking flight reservations (OrderCreate). Some fields in our API (when noticed) use the PADIS Standard v16.1. Find more information <a href=http://www.iata.org/whatwedo/workgroups/Pages/padis.aspx>here</a>
 *
 * API version: 1.2
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package swagger

type OrderCreatePayload struct {
	// CorporateID for corporate orders
	CorporateID string `json:"corporateID,omitempty"`
	// Loyalty program account number for corporates
	LoyaltyProgramAccount string `json:"loyaltyProgramAccount,omitempty"`
	// Order metadata
	Metas interface{} `json:"metas,omitempty"`
	Passengers []Passenger `json:"passengers"`
	Payment *Payment `json:"payment,omitempty"`
	Remarks *OrderCreateRemarks `json:"remarks,omitempty"`
	// The responseID provided in OfferPrice response
	ShoppingResponseID string `json:"shoppingResponseID"`
}