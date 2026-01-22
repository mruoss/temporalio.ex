defmodule Temporal.Api.Sdk.V1.UserMetadata do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.sdk.v1.UserMetadata",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :summary, 1, type: Temporal.Api.Common.V1.Payload
  field :details, 2, type: Temporal.Api.Common.V1.Payload
end
