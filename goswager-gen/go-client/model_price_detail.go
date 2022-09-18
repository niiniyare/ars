/*
 * AirGateway NDC JSON API
 *
 * This API allows shopping and booking with IATA's New Distribution Capabilities (NDC) standard. It provides aggregated shopping capabilities (AirShopping), detailed offer description (OfferPrice), flight seat selection (SeatAvailability) and booking flight reservations (OrderCreate). Some fields in our API (when noticed) use the PADIS Standard v16.1. Find more information <a href=http://www.iata.org/whatwedo/workgroups/Pages/padis.aspx>here</a>
 *
 * API version: 1.2
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package swagger

type PriceDetail struct {
	// 670 or 670.41
	Base float64 `json:"base,omitempty"`
	// The price for each flight offer. There is an offer for each passenger (ADT, CHD, INF).
	Breakdown []PriceDetailBreakdown `json:"breakdown,omitempty"`
	Currency string `json:"currency,omitempty"`
	// The surcharges for the whole flight offer (6 or 6.05).
	Surcharge float64 `json:"surcharge,omitempty"`
	Tax *PriceDetailTax `json:"tax,omitempty"`
	// 720 or 720.62
	Total float64 `json:"total,omitempty"`
}
