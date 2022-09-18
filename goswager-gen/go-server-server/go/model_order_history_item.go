/*
 * AirGateway NDC JSON API
 *
 * This API allows shopping and booking with IATA's New Distribution Capabilities (NDC) standard. It provides aggregated shopping capabilities (AirShopping), detailed offer description (OfferPrice), flight seat selection (SeatAvailability) and booking flight reservations (OrderCreate). Some fields in our API (when noticed) use the PADIS Standard v16.1. Find more information <a href=http://www.iata.org/whatwedo/workgroups/Pages/padis.aspx>here</a>
 *
 * API version: 1.2
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package swagger

type OrderHistoryItem struct {

	// Agency
	Agency string `json:"agency,omitempty"`

	// Agent
	Agent string `json:"agent,omitempty"`

	// Generic details object
	Details interface{} `json:"details,omitempty"`

	// Event ID
	EventID string `json:"eventID,omitempty"`

	// Event time
	EventTime string `json:"eventTime,omitempty"`

	// AirGateway order ID
	Id string `json:"id,omitempty"`

	Price *Price `json:"price,omitempty"`

	// Newly added tickets
	Tickets []TicketInfo `json:"tickets,omitempty"`

	// Transaction type
	TransactionType string `json:"transactionType,omitempty"`
}
