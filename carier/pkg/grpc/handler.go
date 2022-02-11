package grpc

import (
	endpoint "carier/pkg/endpoint"
	pb "carier/pkg/grpc/pb"
	"context"
	"errors"
	grpc "github.com/go-kit/kit/transport/grpc"
)

// makeCreateAirlineCompanyHandler creates the handler logic
func makeCreateAirlineCompanyHandler(endpoints endpoint.Endpoints, options []grpc.ServerOption) grpc.Handler {
	return grpc.NewServer(endpoints.CreateAirlineCompanyEndpoint, decodeCreateAirlineCompanyRequest, encodeCreateAirlineCompanyResponse, options...)
}

// decodeCreateAirlineCompanyResponse is a transport/grpc.DecodeRequestFunc that converts a
// gRPC request to a user-domain CreateAirlineCompany request.
// TODO implement the decoder
func decodeCreateAirlineCompanyRequest(_ context.Context, r interface{}) (interface{}, error) {
	return nil, errors.New("'Carier' Decoder is not impelemented")
}

// encodeCreateAirlineCompanyResponse is a transport/grpc.EncodeResponseFunc that converts
// a user-domain response to a gRPC reply.
// TODO implement the encoder
func encodeCreateAirlineCompanyResponse(_ context.Context, r interface{}) (interface{}, error) {
	return nil, errors.New("'Carier' Encoder is not impelemented")
}
func (g *grpcServer) CreateAirlineCompany(ctx context.Context, req *pb.CreateAirlineCompanyRequest) (*pb.CreateAirlineCompanyReply, error) {
	_, rep, err := g.createAirlineCompany.ServeGRPC(ctx, req)
	if err != nil {
		return nil, err
	}
	return rep.(*pb.CreateAirlineCompanyReply), nil
}

// makeDeleteAirlineCompanyHandler creates the handler logic
func makeDeleteAirlineCompanyHandler(endpoints endpoint.Endpoints, options []grpc.ServerOption) grpc.Handler {
	return grpc.NewServer(endpoints.DeleteAirlineCompanyEndpoint, decodeDeleteAirlineCompanyRequest, encodeDeleteAirlineCompanyResponse, options...)
}

// decodeDeleteAirlineCompanyResponse is a transport/grpc.DecodeRequestFunc that converts a
// gRPC request to a user-domain DeleteAirlineCompany request.
// TODO implement the decoder
func decodeDeleteAirlineCompanyRequest(_ context.Context, r interface{}) (interface{}, error) {
	return nil, errors.New("'Carier' Decoder is not impelemented")
}

// encodeDeleteAirlineCompanyResponse is a transport/grpc.EncodeResponseFunc that converts
// a user-domain response to a gRPC reply.
// TODO implement the encoder
func encodeDeleteAirlineCompanyResponse(_ context.Context, r interface{}) (interface{}, error) {
	return nil, errors.New("'Carier' Encoder is not impelemented")
}
func (g *grpcServer) DeleteAirlineCompany(ctx context.Context, req *pb.DeleteAirlineCompanyRequest) (*pb.DeleteAirlineCompanyReply, error) {
	_, rep, err := g.deleteAirlineCompany.ServeGRPC(ctx, req)
	if err != nil {
		return nil, err
	}
	return rep.(*pb.DeleteAirlineCompanyReply), nil
}

// makeGetAirlineCompanyHandler creates the handler logic
func makeGetAirlineCompanyHandler(endpoints endpoint.Endpoints, options []grpc.ServerOption) grpc.Handler {
	return grpc.NewServer(endpoints.GetAirlineCompanyEndpoint, decodeGetAirlineCompanyRequest, encodeGetAirlineCompanyResponse, options...)
}

// decodeGetAirlineCompanyResponse is a transport/grpc.DecodeRequestFunc that converts a
// gRPC request to a user-domain GetAirlineCompany request.
// TODO implement the decoder
func decodeGetAirlineCompanyRequest(_ context.Context, r interface{}) (interface{}, error) {
	return nil, errors.New("'Carier' Decoder is not impelemented")
}

// encodeGetAirlineCompanyResponse is a transport/grpc.EncodeResponseFunc that converts
// a user-domain response to a gRPC reply.
// TODO implement the encoder
func encodeGetAirlineCompanyResponse(_ context.Context, r interface{}) (interface{}, error) {
	return nil, errors.New("'Carier' Encoder is not impelemented")
}
func (g *grpcServer) GetAirlineCompany(ctx context.Context, req *pb.GetAirlineCompanyRequest) (*pb.GetAirlineCompanyReply, error) {
	_, rep, err := g.getAirlineCompany.ServeGRPC(ctx, req)
	if err != nil {
		return nil, err
	}
	return rep.(*pb.GetAirlineCompanyReply), nil
}

// makeListAirlineCompanyHandler creates the handler logic
func makeListAirlineCompanyHandler(endpoints endpoint.Endpoints, options []grpc.ServerOption) grpc.Handler {
	return grpc.NewServer(endpoints.ListAirlineCompanyEndpoint, decodeListAirlineCompanyRequest, encodeListAirlineCompanyResponse, options...)
}

// decodeListAirlineCompanyResponse is a transport/grpc.DecodeRequestFunc that converts a
// gRPC request to a user-domain ListAirlineCompany request.
// TODO implement the decoder
func decodeListAirlineCompanyRequest(_ context.Context, r interface{}) (interface{}, error) {
	return nil, errors.New("'Carier' Decoder is not impelemented")
}

// encodeListAirlineCompanyResponse is a transport/grpc.EncodeResponseFunc that converts
// a user-domain response to a gRPC reply.
// TODO implement the encoder
func encodeListAirlineCompanyResponse(_ context.Context, r interface{}) (interface{}, error) {
	return nil, errors.New("'Carier' Encoder is not impelemented")
}
func (g *grpcServer) ListAirlineCompany(ctx context.Context, req *pb.ListAirlineCompanyRequest) (*pb.ListAirlineCompanyReply, error) {
	_, rep, err := g.listAirlineCompany.ServeGRPC(ctx, req)
	if err != nil {
		return nil, err
	}
	return rep.(*pb.ListAirlineCompanyReply), nil
}
