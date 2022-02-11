package service

import (
	"context"

	"github.com/niiniyare/ars/airport/entity"
)

// AirportService describes the service.
type AirportService interface {
	CreateAirports(ctx context.Context, arg CreateAirportsParams) (entity.Airport, error)

	DeleteAirports(ctx context.Context, airportCode string) error
	GetListAirports(ctx context.Context) ([]entity.Airport, error)
}

type airport struct{}

func (b *airport) CreateAirports(ctx context.Context, arg CreateAirportsParams) (e0 entity.Airport, e1 error) {
	// TODO implement the business logic of CreateAirports
	return e0, e1
}
func (b *airport) DeleteAirports(ctx context.Context, airportCode string) (e0 error) {
	// TODO implement the business logic of DeleteAirports
	return e0
}
func (b *airport) GetListAirports(ctx context.Context) (e0 []entity.Airport, e1 error) {
	// TODO implement the business logic of GetListAirports
	return e0, e1
}

// NewAirport returns a naive, stateless implementation of AirportService.
func NewAirport() AirportService {
	return &airport{}
}

// New returns a AirportService with all of the expected middleware wired in.
func New(middleware []Middleware) AirportService {
	var svc AirportService = Newairport()
	for _, m := range middleware {
		svc = m(svc)
	}
	return svc
}

type basicAirportService struct{}

func (b *basicAirportService) CreateAirports(ctx context.Context, arg CreateAirportsParams) (e0 entity.Airport, e1 error) {
	// TODO implement the business logic of CreateAirports
	return e0, e1
}
func (b *basicAirportService) DeleteAirports(ctx context.Context, airportCode string) (e0 error) {
	// TODO implement the business logic of DeleteAirports
	return e0
}
func (b *basicAirportService) GetListAirports(ctx context.Context) (e0 []entity.Airport, e1 error) {
	// TODO implement the business logic of GetListAirports
	return e0, e1
}

// NewBasicAirportService returns a naive, stateless implementation of AirportService.
func NewBasicAirportService() AirportService {
	return &basicAirportService{}
}
