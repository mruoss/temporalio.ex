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

  rpc :GetNexusIncomingService,
      Temporal.Api.Operatorservice.V1.GetNexusIncomingServiceRequest,
      Temporal.Api.Operatorservice.V1.GetNexusIncomingServiceResponse

  rpc :CreateOrUpdateNexusIncomingService,
      Temporal.Api.Operatorservice.V1.CreateOrUpdateNexusIncomingServiceRequest,
      Temporal.Api.Operatorservice.V1.CreateOrUpdateNexusIncomingServiceResponse

  rpc :DeleteNexusIncomingService,
      Temporal.Api.Operatorservice.V1.DeleteNexusIncomingServiceRequest,
      Temporal.Api.Operatorservice.V1.DeleteNexusIncomingServiceResponse

  rpc :ListNexusIncomingServices,
      Temporal.Api.Operatorservice.V1.ListNexusIncomingServicesRequest,
      Temporal.Api.Operatorservice.V1.ListNexusIncomingServicesResponse
end

defmodule Temporal.Api.Operatorservice.V1.OperatorService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Temporal.Api.Operatorservice.V1.OperatorService.Service
end