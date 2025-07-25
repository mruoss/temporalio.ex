defmodule Temporal.Api.Enums.V1.DeploymentReachability do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DEPLOYMENT_REACHABILITY_UNSPECIFIED, 0
  field :DEPLOYMENT_REACHABILITY_REACHABLE, 1
  field :DEPLOYMENT_REACHABILITY_CLOSED_WORKFLOWS_ONLY, 2
  field :DEPLOYMENT_REACHABILITY_UNREACHABLE, 3
end

defmodule Temporal.Api.Enums.V1.VersionDrainageStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :VERSION_DRAINAGE_STATUS_UNSPECIFIED, 0
  field :VERSION_DRAINAGE_STATUS_DRAINING, 1
  field :VERSION_DRAINAGE_STATUS_DRAINED, 2
end

defmodule Temporal.Api.Enums.V1.WorkerVersioningMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :WORKER_VERSIONING_MODE_UNSPECIFIED, 0
  field :WORKER_VERSIONING_MODE_UNVERSIONED, 1
  field :WORKER_VERSIONING_MODE_VERSIONED, 2
end

defmodule Temporal.Api.Enums.V1.WorkerDeploymentVersionStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :WORKER_DEPLOYMENT_VERSION_STATUS_UNSPECIFIED, 0
  field :WORKER_DEPLOYMENT_VERSION_STATUS_INACTIVE, 1
  field :WORKER_DEPLOYMENT_VERSION_STATUS_CURRENT, 2
  field :WORKER_DEPLOYMENT_VERSION_STATUS_RAMPING, 3
  field :WORKER_DEPLOYMENT_VERSION_STATUS_DRAINING, 4
  field :WORKER_DEPLOYMENT_VERSION_STATUS_DRAINED, 5
end
