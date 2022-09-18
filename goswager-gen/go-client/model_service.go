/*
 * AirGateway NDC JSON API
 *
 * This API allows shopping and booking with IATA's New Distribution Capabilities (NDC) standard. It provides aggregated shopping capabilities (AirShopping), detailed offer description (OfferPrice), flight seat selection (SeatAvailability) and booking flight reservations (OrderCreate). Some fields in our API (when noticed) use the PADIS Standard v16.1. Find more information <a href=http://www.iata.org/whatwedo/workgroups/Pages/padis.aspx>here</a>
 *
 * API version: 1.2
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package swagger

// Service List
type Service struct {
	BookingInstructions *BookingInstructions `json:"bookingInstructions,omitempty"`
	// List of service descriptions
	Descriptions []string `json:"descriptions,omitempty"`
	// Maximum quantity of services
	MaximumQuantity int64 `json:"maximumQuantity,omitempty"`
	// Minimum quantity of services
	MinimumQuantity int64 `json:"minimumQuantity,omitempty"`
	// Service name
	Name string `json:"name,omitempty"`
	// Service object key
	ObjectKey string `json:"objectKey,omitempty"`
	Price *Price `json:"price,omitempty"`
	// Properties
	Properties []DisclosureProperty `json:"properties,omitempty"`
	// Service reference
	Ref string `json:"ref,omitempty"`
	// Points when a service is removable or not. Used only in OrderViewRS
	Removable bool `json:"removable,omitempty"`
	// Segment references
	SegmentReferences string `json:"segmentReferences,omitempty"`
	// Service ID
	ServiceID string `json:"serviceID,omitempty"`
	// Traveler references
	TravelerReferences string `json:"travelerReferences,omitempty"`
}