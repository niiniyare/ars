package endpoint

import (
	"context"
	endpoint "github.com/go-kit/kit/endpoint"
	entity "github.com/niiniyare/ars/airport/entity"
	service "github.com/niiniyare/ars/airport/pkg/service"
)

// CreateAirportsRequest collects the request parameters for the CreateAirports method.
type CreateAirportsRequest struct {
	Arg service.CreateAirportsParams `json:"arg"`
}

// CreateAirportsResponse collects the response parameters for the CreateAirports method.
type CreateAirportsResponse struct {
	E0 entity.Airport `json:"e0"`
	E1 error          `json:"e1"`
}

// MakeCreateAirportsEndpoint returns an endpoint that invokes CreateAirports on the service.
func MakeCreateAirportsEndpoint(s service.AirportService) endpoint.Endpoint {
	return func(ctx context.Context, request interface{}) (interface{}, error) {
		req := request.(CreateAirportsRequest)
		e0, e1 := s.CreateAirports(ctx, req.Arg)
		return CreateAirportsResponse{
			E0: e0,
			E1: e1,
		}, nil
	}
}

// Failed implements Failer.
func (r CreateAirportsResponse) Failed() error {
	return r.E1
}

// DeleteAirportsRequest collects the request parameters for the DeleteAirports method.
type DeleteAirportsRequest struct {
	AirportCode string `json:"airport_code"`
}

// DeleteAirportsResponse collects the response parameters for the DeleteAirports method.
type DeleteAirportsResponse struct {
	E0 error `json:"e0"`
}

// MakeDeleteAirportsEndpoint returns an endpoint that invokes DeleteAirports on the service.
func MakeDeleteAirportsEndpoint(s service.AirportService) endpoint.Endpoint {
	return func(ctx context.Context, request interface{}) (interface{}, error) {
		req := request.(DeleteAirportsRequest)
		e0 := s.DeleteAirports(ctx, req.AirportCode)
		return DeleteAirportsResponse{E0: e0}, nil
	}
}

// Failed implements Failer.
func (r DeleteAirportsResponse) Failed() error {
	return r.E0
}

// GetListAirportsRequest collects the request parameters for the GetListAirports method.
type GetListAirportsRequest struct{}

// GetListAirportsResponse collects the response parameters for the GetListAirports method.
type GetListAirportsResponse struct {
	E0 []entity.Airport `json:"e0"`
	E1 error            `json:"e1"`
}

// MakeGetListAirportsEndpoint returns an endpoint that invokes GetListAirports on the service.
func MakeGetListAirportsEndpoint(s service.AirportService) endpoint.Endpoint {
	return func(ctx context.Context, request interface{}) (interface{}, error) {
		e0, e1 := s.GetListAirports(ctx)
		return GetListAirportsResponse{
			E0: e0,
			E1: e1,
		}, nil
	}
}

// Failed implements Failer.
func (r GetListAirportsResponse) Failed() error {
	return r.E1
}

// Failure is an interface that should be implemented by response types.
// Response encoders can check if responses are Failer, and if so they've
// failed, and if so encode them using a separate write path based on the error.
type Failure interface {
	Failed() error
}

// CreateAirports implements Service. Primarily useful in a client.
func (e Endpoints) CreateAirports(ctx context.Context, arg service.CreateAirportsParams) (e0 entity.Airport, e1 error) {
	request := CreateAirportsRequest{Arg: arg}
	response, err := e.CreateAirportsEndpoint(ctx, request)
	if err != nil {
		return
	}
	return response.(CreateAirportsResponse).E0, response.(CreateAirportsResponse).E1
}

// DeleteAirports implements Service. Primarily useful in a client.
func (e Endpoints) DeleteAirports(ctx context.Context, airportCode string) (e0 error) {
	request := DeleteAirportsRequest{AirportCode: airportCode}
	response, err := e.DeleteAirportsEndpoint(ctx, request)
	if err != nil {
		return
	}
	return response.(DeleteAirportsResponse).E0
}

// GetListAirports implements Service. Primarily useful in a client.
func (e Endpoints) GetListAirports(ctx context.Context) (e0 []entity.Airport, e1 error) {
	request := GetListAirportsRequest{}
	response, err := e.GetListAirportsEndpoint(ctx, request)
	if err != nil {
		return
	}
	return response.(GetListAirportsResponse).E0, response.(GetListAirportsResponse).E1
}
