/*
 * AirGateway NDC JSON API
 *
 * This API allows shopping and booking with IATA's New Distribution Capabilities (NDC) standard. It provides aggregated shopping capabilities (AirShopping), detailed offer description (OfferPrice), flight seat selection (SeatAvailability) and booking flight reservations (OrderCreate). Some fields in our API (when noticed) use the PADIS Standard v16.1. Find more information <a href=http://www.iata.org/whatwedo/workgroups/Pages/padis.aspx>here</a>
 *
 * API version: 1.2
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package swagger

type PriceDetailTax struct {
	// The value price, currency, code and description for each tax for each AirlineOffer
	Breakdown []PriceDetailTaxBreakdown `json:"breakdown,omitempty"`
	// 120 or 120.62
	Total float64 `json:"total,omitempty"`
}