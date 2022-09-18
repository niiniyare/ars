/*
 * AirGateway NDC JSON API
 *
 * This API allows shopping and booking with IATA's New Distribution Capabilities (NDC) standard. It provides aggregated shopping capabilities (AirShopping), detailed offer description (OfferPrice), flight seat selection (SeatAvailability) and booking flight reservations (OrderCreate). Some fields in our API (when noticed) use the PADIS Standard v16.1. Find more information <a href=http://www.iata.org/whatwedo/workgroups/Pages/padis.aspx>here</a>
 *
 * API version: 1.2
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package swagger

// OrderCreateMedia media type (default view)
type OrderCreateMedia struct {

	// Agency name
	Agency string `json:"agency,omitempty"`

	AgencyData *AgencyData `json:"agencyData,omitempty"`

	AllowedPaymentMethods *AllowedPaymentMethods `json:"allowedPaymentMethods,omitempty"`

	AllowedRequests *OrderCreateAllowedRequests `json:"allowedRequests,omitempty"`

	// Approval status
	ApprovalStatus string `json:"approvalStatus,omitempty"`

	// Approved status
	Approved bool `json:"approved,omitempty"`

	Benefits *Benefit `json:"benefits,omitempty"`

	BookingDate string `json:"bookingDate,omitempty"`

	BookingReference *BookingReferenceResponse `json:"bookingReference,omitempty"`

	BookingType string `json:"bookingType,omitempty"`

	// Order flights carbon offset
	CarbonOffset []CarbonOffset `json:"carbonOffset,omitempty"`

	Comments string `json:"comments,omitempty"`

	// CorporateID for corporate orders
	CorporateID string `json:"corporateID,omitempty"`

	CreatedAt string `json:"createdAt,omitempty"`

	Disclosures []Disclosure `json:"disclosures,omitempty"`

	// Disruption notification message
	DisruptionMessage string `json:"disruptionMessage,omitempty"`

	// Disruption status (FlightTimeChange/FlightNumberChange/FlightCancellation)
	DisruptionStatus string `json:"disruptionStatus,omitempty"`

	// External order ID
	ExternalOrderID string `json:"externalOrderID,omitempty"`

	// Files information
	Files []OrderFile `json:"files,omitempty"`

	// Flight Segment information. Including departure, arrival and airline information.
	Flights []Flight `json:"flights,omitempty"`

	FormOfPayment string `json:"formOfPayment,omitempty"`

	History []OrderHistoryItem `json:"history,omitempty"`

	// AirGateway order ID
	Id string `json:"id,omitempty"`

	Logs []OrderLog `json:"logs,omitempty"`

	// Order metadata
	Metas interface{} `json:"metas,omitempty"`

	// External order ID (deprecated)
	OrderID string `json:"orderID,omitempty"`

	Passengers []Passenger `json:"passengers,omitempty"`

	Payment *OrderCreatePayment `json:"payment,omitempty"`

	// Payment time limit
	PaymentTimeLimit string `json:"paymentTimeLimit,omitempty"`

	// Type and the application (with the value for each application) for every penalties.
	Penalties []Penalty `json:"penalties,omitempty"`

	// The unique identifier of the order used on the old system and respected by some providers to maintain compatibility.
	Pnr string `json:"pnr,omitempty"`

	Price *Price `json:"price,omitempty"`

	// Time limit, for an on hold order, during which airline guarantee the price doesn't vary
	PriceGuaranteeTimeLimit string `json:"priceGuaranteeTimeLimit,omitempty"`

	// Ready To Ticket Issue flag
	ReadyToTicketIssue bool `json:"readyToTicketIssue,omitempty"`

	// Refunds type can be: 'refund', 'voucher'
	RefundType string `json:"refundType,omitempty"`

	RefundedAmount *Price `json:"refundedAmount,omitempty"`

	Remarks *OrderRemarks `json:"remarks,omitempty"`

	// List of seats
	Seats []Seat `json:"seats,omitempty"`

	// Send for approval allowed
	SendForApprovalAllowed bool `json:"sendForApprovalAllowed,omitempty"`

	// List of services
	Services []Service `json:"services,omitempty"`

	// Order status (Pending/Ticketed/Cancelled/Completed/Started/Expired)
	Status string `json:"status,omitempty"`

	// Ticket Issue object
	TicketIssue interface{} `json:"ticketIssue,omitempty"`

	// Tickets information
	Tickets []TicketInfo `json:"tickets,omitempty"`

	UpdatedAt string `json:"updatedAt,omitempty"`

	// View mode for order
	ViewMode string `json:"viewMode,omitempty"`

	Warnings []OrderLog `json:"warnings,omitempty"`
}