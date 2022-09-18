/*
 * AirGateway NDC JSON API
 *
 * This API allows shopping and booking with IATA's New Distribution Capabilities (NDC) standard. It provides aggregated shopping capabilities (AirShopping), detailed offer description (OfferPrice), flight seat selection (SeatAvailability) and booking flight reservations (OrderCreate). Some fields in our API (when noticed) use the PADIS Standard v16.1. Find more information <a href=http://www.iata.org/whatwedo/workgroups/Pages/padis.aspx>here</a>
 *
 * API version: 1.2
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package swagger

type PenaltyAmount struct {

	// The homogenised value of the penalty for the application case (35 or 30.65)
	Amount float64 `json:"amount,omitempty"`

	// The consumer currency of this value
	Currency string `json:"currency,omitempty"`

	// The provider value of the penalty for the application case (30 or 30.70)
	ProviderAmount float64 `json:"providerAmount,omitempty"`

	// The provider currency of this value
	ProviderCurrency string `json:"providerCurrency,omitempty"`

	// Penalty remark.
	Remark string `json:"remark,omitempty"`
}
