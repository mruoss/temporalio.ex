defmodule Temporal.Api.Notificationservice.V1.OnCompleteRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.notificationservice.v1.OnCompleteRequest",
    protoc_gen_elixir_version: "0.16.1",
    syntax: :proto3

  oneof :result, 0

  field :success, 1, type: Temporal.Api.Common.V1.Payload, oneof: 0
  field :failure, 2, type: Temporal.Api.Failure.V1.Failure, oneof: 0
  field :source_context, 3, type: Temporal.Api.Common.V1.Payload, json_name: "sourceContext"
end

defmodule Temporal.Api.Notificationservice.V1.OnCompleteResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.notificationservice.v1.OnCompleteResponse",
    protoc_gen_elixir_version: "0.16.1",
    syntax: :proto3
end
