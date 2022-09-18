/*
 * AirGateway NDC JSON API
 *
 * This API allows shopping and booking with IATA's New Distribution Capabilities (NDC) standard. It provides aggregated shopping capabilities (AirShopping), detailed offer description (OfferPrice), flight seat selection (SeatAvailability) and booking flight reservations (OrderCreate). Some fields in our API (when noticed) use the PADIS Standard v16.1. Find more information <a href=http://www.iata.org/whatwedo/workgroups/Pages/padis.aspx>here</a>
 *
 * API version: 1.2
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package swagger

type FlightDetail struct {
	ClassOfService *ClassOfService `json:"classOfService,omitempty"`
	// Flight duration
	Duration string `json:"duration,omitempty"`
	// How many seats left
	SeatsLeft string `json:"seatsLeft,omitempty"`
	// The status of the segment -> UN: Unconfirmed. TK: Change scheduled, contact center will confirm. HK: Confirmed.
	SegmentType string `json:"segmentType,omitempty"`
	// Stop locations
	StopLocations []StopLocation `json:"stopLocations,omitempty"`
	// Number of extra stops from Origin to Destination
	StopQuantity string `json:"stopQuantity,omitempty"`
}
