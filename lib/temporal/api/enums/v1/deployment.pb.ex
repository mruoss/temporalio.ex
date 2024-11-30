defmodule Temporal.Api.Enums.V1.DeploymentReachability do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :DEPLOYMENT_REACHABILITY_UNSPECIFIED, 0
  field :DEPLOYMENT_REACHABILITY_REACHABLE, 1
  field :DEPLOYMENT_REACHABILITY_CLOSED_WORKFLOWS_ONLY, 2
  field :DEPLOYMENT_REACHABILITY_UNREACHABLE, 3
end