defmodule Temporal.Api.Protometa.V1.RequestHeaderAnnotation do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.protometa.v1.RequestHeaderAnnotation",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :header, 1, type: :string
  field :value, 2, type: :string
end
