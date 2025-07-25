defmodule Temporal.Api.Sdk.V1.UserMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :summary, 1, type: Temporal.Api.Common.V1.Payload
  field :details, 2, type: Temporal.Api.Common.V1.Payload
end
