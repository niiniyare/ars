package entity 
type Coordinates struct{ 
  longitude float64 `json:"latitude"`
  latitude float64  `json:"longitude"`
  
}
type Airport struct {
	// Airport code
	AirportCode string `json:"airport_code"`
	// Airport name
	AirportName string `json:"airport_name"`
	// Country
	Country string `json:"country"`
	// City
	City string `json:"city"`
	// Airport coordinates (longitude and latitude)
	Coordinates Coordinates `json:"coordinates"`
	Timezone    string      `json:"timezone"`
	CreatedAt   time.Time   `json:"created_at"`
}

type CreateAirportListParams struct {
	AirportCode string      `json:"airport_code"`
	AirportName string      `json:"airport_name"`
	City        string      `json:"city"`
	Point       Coordinates `json:"point"`
}

