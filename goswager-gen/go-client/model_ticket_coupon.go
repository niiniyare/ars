/*
 * AirGateway NDC JSON API
 *
 * This API allows shopping and booking with IATA's New Distribution Capabilities (NDC) standard. It provides aggregated shopping capabilities (AirShopping), detailed offer description (OfferPrice), flight seat selection (SeatAvailability) and booking flight reservations (OrderCreate). Some fields in our API (when noticed) use the PADIS Standard v16.1. Find more information <a href=http://www.iata.org/whatwedo/workgroups/Pages/padis.aspx>here</a>
 *
 * API version: 1.2
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package swagger

type TicketCoupon struct {
	// Coupon date of service
	DateOfService string `json:"dateOfService,omitempty"`
	// Coupon fareBasisCode
	FareBasisCode string `json:"fareBasisCode,omitempty"`
	// Coupon media
	Media string `json:"media,omitempty"`
	// Coupon number
	Number string `json:"number,omitempty"`
	Price *Price `json:"price,omitempty"`
	// Coupon ref
	Reference string `json:"reference,omitempty"`
	// Coupon remark
	Remark string `json:"remark,omitempty"`
	Segment *TicketCouponAirlineInfo `json:"segment,omitempty"`
	// Coupon service references
	ServiceReferences string `json:"serviceReferences,omitempty"`
	// Coupon status code
	Status string `json:"status,omitempty"`
	// Coupon status description
	StatusDefinition string `json:"statusDefinition,omitempty"`
	Valid *TicketCouponValid `json:"valid,omitempty"`
	// Coupon validating airline
	ValidatingAirline string `json:"validatingAirline,omitempty"`
}
