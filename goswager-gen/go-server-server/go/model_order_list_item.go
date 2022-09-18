/*
 * AirGateway NDC JSON API
 *
 * This API allows shopping and booking with IATA's New Distribution Capabilities (NDC) standard. It provides aggregated shopping capabilities (AirShopping), detailed offer description (OfferPrice), flight seat selection (SeatAvailability) and booking flight reservations (OrderCreate). Some fields in our API (when noticed) use the PADIS Standard v16.1. Find more information <a href=http://www.iata.org/whatwedo/workgroups/Pages/padis.aspx>here</a>
 *
 * API version: 1.2
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package swagger

type OrderListItem struct {

	Agency string `json:"agency,omitempty"`

	// Order approve status (traveler_pending/traveler_rejected/manager_pending/manager_rejected/customer_ok)
	ApproveStatus string `json:"approveStatus,omitempty"`

	BookingDate string `json:"bookingDate,omitempty"`

	BookingType string `json:"bookingType,omitempty"`

	// CorporateID for corporate orders
	CorporateID string `json:"corporateID,omitempty"`

	// Disruption status (ScheduledTimeChange/FlightCancellation)
	DisruptionStatus string `json:"disruptionStatus,omitempty"`

	// Flight Segment information. Including departure, arrival and airline information.
	Flights []Flight `json:"flights,omitempty"`

	// AirGateway order ID
	Id string `json:"id,omitempty"`

	OrderID string `json:"orderID,omitempty"`

	Owner string `json:"owner,omitempty"`

	Passengers []Passenger `json:"passengers,omitempty"`

	// Payment time limit
	PaymentTimeLimit string `json:"paymentTimeLimit,omitempty"`

	// PNR
	Pnr string `json:"pnr,omitempty"`

	Provider string `json:"provider,omitempty"`

	// Order status (Pending/Confirmed/Canceled/Voided/Refunded)
	Status string `json:"status,omitempty"`
}