package http

import (
	"context"
	"encoding/json"
	"errors"
	http1 "github.com/go-kit/kit/transport/http"
	endpoint "github.com/niiniyare/ars/airport/pkg/endpoint"
	"net/http"
)

// makeCreateAirportsHandler creates the handler logic
func makeCreateAirportsHandler(m *http.ServeMux, endpoints endpoint.Endpoints, options []http1.ServerOption) {
	m.Handle("/create-airports", http1.NewServer(endpoints.CreateAirportsEndpoint, decodeCreateAirportsRequest, encodeCreateAirportsResponse, options...))
}

// decodeCreateAirportsRequest is a transport/http.DecodeRequestFunc that decodes a
// JSON-encoded request from the HTTP request body.
func decodeCreateAirportsRequest(_ context.Context, r *http.Request) (interface{}, error) {
	req := endpoint.CreateAirportsRequest{}
	err := json.NewDecoder(r.Body).Decode(&req)
	return req, err
}

// encodeCreateAirportsResponse is a transport/http.EncodeResponseFunc that encodes
// the response as JSON to the response writer
func encodeCreateAirportsResponse(ctx context.Context, w http.ResponseWriter, response interface{}) (err error) {
	if f, ok := response.(endpoint.Failure); ok && f.Failed() != nil {
		ErrorEncoder(ctx, f.Failed(), w)
		return nil
	}
	w.Header().Set("Content-Type", "application/json; charset=utf-8")
	err = json.NewEncoder(w).Encode(response)
	return
}

// makeDeleteAirportsHandler creates the handler logic
func makeDeleteAirportsHandler(m *http.ServeMux, endpoints endpoint.Endpoints, options []http1.ServerOption) {
	m.Handle("/delete-airports", http1.NewServer(endpoints.DeleteAirportsEndpoint, decodeDeleteAirportsRequest, encodeDeleteAirportsResponse, options...))
}

// decodeDeleteAirportsRequest is a transport/http.DecodeRequestFunc that decodes a
// JSON-encoded request from the HTTP request body.
func decodeDeleteAirportsRequest(_ context.Context, r *http.Request) (interface{}, error) {
	req := endpoint.DeleteAirportsRequest{}
	err := json.NewDecoder(r.Body).Decode(&req)
	return req, err
}

// encodeDeleteAirportsResponse is a transport/http.EncodeResponseFunc that encodes
// the response as JSON to the response writer
func encodeDeleteAirportsResponse(ctx context.Context, w http.ResponseWriter, response interface{}) (err error) {
	if f, ok := response.(endpoint.Failure); ok && f.Failed() != nil {
		ErrorEncoder(ctx, f.Failed(), w)
		return nil
	}
	w.Header().Set("Content-Type", "application/json; charset=utf-8")
	err = json.NewEncoder(w).Encode(response)
	return
}

// makeGetListAirportsHandler creates the handler logic
func makeGetListAirportsHandler(m *http.ServeMux, endpoints endpoint.Endpoints, options []http1.ServerOption) {
	m.Handle("/get-list-airports", http1.NewServer(endpoints.GetListAirportsEndpoint, decodeGetListAirportsRequest, encodeGetListAirportsResponse, options...))
}

// decodeGetListAirportsRequest is a transport/http.DecodeRequestFunc that decodes a
// JSON-encoded request from the HTTP request body.
func decodeGetListAirportsRequest(_ context.Context, r *http.Request) (interface{}, error) {
	req := endpoint.GetListAirportsRequest{}
	err := json.NewDecoder(r.Body).Decode(&req)
	return req, err
}

// encodeGetListAirportsResponse is a transport/http.EncodeResponseFunc that encodes
// the response as JSON to the response writer
func encodeGetListAirportsResponse(ctx context.Context, w http.ResponseWriter, response interface{}) (err error) {
	if f, ok := response.(endpoint.Failure); ok && f.Failed() != nil {
		ErrorEncoder(ctx, f.Failed(), w)
		return nil
	}
	w.Header().Set("Content-Type", "application/json; charset=utf-8")
	err = json.NewEncoder(w).Encode(response)
	return
}
func ErrorEncoder(_ context.Context, err error, w http.ResponseWriter) {
	w.WriteHeader(err2code(err))
	json.NewEncoder(w).Encode(errorWrapper{Error: err.Error()})
}
func ErrorDecoder(r *http.Response) error {
	var w errorWrapper
	if err := json.NewDecoder(r.Body).Decode(&w); err != nil {
		return err
	}
	return errors.New(w.Error)
}

// This is used to set the http status, see an example here :
// https://github.com/go-kit/kit/blob/master/examples/addsvc/pkg/addtransport/http.go#L133
func err2code(err error) int {
	return http.StatusInternalServerError
}

type errorWrapper struct {
	Error string `json:"error"`
}
