/*
 * AirGateway NDC JSON API
 *
 * This API allows shopping and booking with IATA's New Distribution Capabilities (NDC) standard. It provides aggregated shopping capabilities (AirShopping), detailed offer description (OfferPrice), flight seat selection (SeatAvailability) and booking flight reservations (OrderCreate). Some fields in our API (when noticed) use the PADIS Standard v16.1. Find more information <a href=http://www.iata.org/whatwedo/workgroups/Pages/padis.aspx>here</a>
 *
 * API version: 1.2
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package swagger

type TicketInfo struct {
	// Ticket coupons' details
	Coupons []TicketCoupon `json:"coupons,omitempty"`
	// Ticket issue date
	DateOfIssue string `json:"dateOfIssue,omitempty"`
	// Number of tickets for passenger
	NumberOfBooklets int64 `json:"numberOfBooklets,omitempty"`
	// Passenger reference
	PassengerRef string `json:"passengerRef,omitempty"`
	Price *Price `json:"price,omitempty"`
	// Remark text
	Remark string `json:"remark,omitempty"`
	// Ticket number of passenger
	TicketNumber string `json:"ticketNumber,omitempty"`
	// Ticket issue time
	TimeOfIssue string `json:"timeOfIssue,omitempty"`
	// Type of ticket
	TypeCode string `json:"typeCode,omitempty"`
	// The meaning of the type of ticket
	TypeCodeDefinition string `json:"typeCodeDefinition,omitempty"`
}
