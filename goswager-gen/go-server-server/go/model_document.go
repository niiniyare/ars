/*
 * AirGateway NDC JSON API
 *
 * This API allows shopping and booking with IATA's New Distribution Capabilities (NDC) standard. It provides aggregated shopping capabilities (AirShopping), detailed offer description (OfferPrice), flight seat selection (SeatAvailability) and booking flight reservations (OrderCreate). Some fields in our API (when noticed) use the PADIS Standard v16.1. Find more information <a href=http://www.iata.org/whatwedo/workgroups/Pages/padis.aspx>here</a>
 *
 * API version: 1.2
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package swagger

type Document struct {

	DocumentID string `json:"documentID"`

	// Valid values: 
	DocumentType string `json:"documentType"`

	// The expiration date of the document using format YYYY-MM-DD.
	ExpirationDate string `json:"expirationDate,omitempty"`
}
