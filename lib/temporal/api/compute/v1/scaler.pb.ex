defmodule Temporal.Api.Compute.V1.ComputeScaler do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.compute.v1.ComputeScaler",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :type, 1, type: :string
  field :details, 2, type: Temporal.Api.Common.V1.Payload
end
