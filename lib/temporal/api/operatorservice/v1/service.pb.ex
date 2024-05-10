defmodule Temporal.Api.Operatorservice.V1.OperatorService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "temporal.api.operatorservice.v1.OperatorService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :AddSearchAttributes,
      Temporal.Api.Operatorservice.V1.AddSearchAttributesRequest,
      Temporal.Api.Operatorservice.V1.AddSearchAttributesResponse

  rpc :RemoveSearchAttributes,
      Temporal.Api.Operatorservice.V1.RemoveSearchAttributesRequest,
      Temporal.Api.Operatorservice.V1.RemoveSearchAttributesResponse

  rpc :ListSearchAttributes,
      Temporal.Api.Operatorservice.V1.ListSearchAttributesRequest,
      Temporal.Api.Operatorservice.V1.ListSearchAttributesResponse

  rpc :DeleteNamespace,
      Temporal.Api.Operatorservice.V1.DeleteNamespaceRequest,
      Temporal.Api.Operatorservice.V1.DeleteNamespaceResponse

  rpc :AddOrUpdateRemoteCluster,
      Temporal.Api.Operatorservice.V1.AddOrUpdateRemoteClusterRequest,
      Temporal.Api.Operatorservice.V1.AddOrUpdateRemoteClusterResponse

  rpc :RemoveRemoteCluster,
      Temporal.Api.Operatorservice.V1.RemoveRemoteClusterRequest,
      Temporal.Api.Operatorservice.V1.RemoveRemoteClusterResponse

  rpc :ListClusters,
      Temporal.Api.Operatorservice.V1.ListClustersRequest,
      Temporal.Api.Operatorservice.V1.ListClustersResponse

  rpc :GetNexusEndpoint,
      Temporal.Api.Operatorservice.V1.GetNexusEndpointRequest,
      Temporal.Api.Operatorservice.V1.GetNexusEndpointResponse

  rpc :CreateNexusEndpoint,
      Temporal.Api.Operatorservice.V1.CreateNexusEndpointRequest,
      Temporal.Api.Operatorservice.V1.CreateNexusEndpointResponse

  rpc :UpdateNexusEndpoint,
      Temporal.Api.Operatorservice.V1.UpdateNexusEndpointRequest,
      Temporal.Api.Operatorservice.V1.UpdateNexusEndpointResponse

  rpc :DeleteNexusEndpoint,
      Temporal.Api.Operatorservice.V1.DeleteNexusEndpointRequest,
      Temporal.Api.Operatorservice.V1.DeleteNexusEndpointResponse

  rpc :ListNexusEndpoints,
      Temporal.Api.Operatorservice.V1.ListNexusEndpointsRequest,
      Temporal.Api.Operatorservice.V1.ListNexusEndpointsResponse
end

defmodule Temporal.Api.Operatorservice.V1.OperatorService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Temporal.Api.Operatorservice.V1.OperatorService.Service
end