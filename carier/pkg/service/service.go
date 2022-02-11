package service

import (
	"context"
	"time"
	//psql "github.com/Abdirahman0022/airline_company/pkg/postgresql"
)

type AirlineCompany struct {
	CompanyID   int64     `json:"company_id"`
	CompanyName string    `json:"company_name"`
	IataCode    string    `json:"iata_code"`
	MainAirport string    `json:"main_airport"`
	CreatedAt   time.Time `json:"created_at"`
}

// AirlineCompanyService describes the service.
type CarierService interface {
	// Add your methods here
	CreateAirlineCompany(ctx context.Context, IataCode string, CompanyName string, MainAirport string) (AirlineCompany, error)
	DeleteAirlineCompany(ctx context.Context, companyID int64) error
	GetAirlineCompany(ctx context.Context, companyID int64) (AirlineCompany, error)
	ListAirlineCompany(ctx context.Context) ([]AirlineCompany, error)
}

type basicCarierService struct{}

func (b *basicCarierService) CreateAirlineCompany(ctx context.Context, IataCode string, CompanyName string, MainAirport string) (a0 AirlineCompany, e1 error) {
	// TODO implement the business logic of CreateAirlineCompany
	return a0, e1
}
func (b *basicCarierService) DeleteAirlineCompany(ctx context.Context, companyID int64) (e0 error) {
	// TODO implement the business logic of DeleteAirlineCompany
	return e0
}
func (b *basicCarierService) GetAirlineCompany(ctx context.Context, companyID int64) (a0 AirlineCompany, e1 error) {
	// TODO implement the business logic of GetAirlineCompany
	return a0, e1
}
func (b *basicCarierService) ListAirlineCompany(ctx context.Context) (a0 []AirlineCompany, e1 error) {
	// TODO implement the business logic of ListAirlineCompany
	return a0, e1
}

// NewBasicCarierService returns a naive, stateless implementation of CarierService.
func NewBasicCarierService() CarierService {
	return &basicCarierService{}
}

// New returns a CarierService with all of the expected middleware wired in.
func New(middleware []Middleware) CarierService {
	var svc CarierService = NewBasicCarierService()
	for _, m := range middleware {
		svc = m(svc)
	}
	return svc
}
