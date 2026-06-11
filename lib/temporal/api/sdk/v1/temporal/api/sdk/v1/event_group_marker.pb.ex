defmodule Temporal.Api.Sdk.V1.EventGroupMarker.Label do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.sdk.v1.EventGroupMarker.Label",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :label, 2, type: Temporal.Api.Common.V1.Payload
end

defmodule Temporal.Api.Sdk.V1.EventGroupMarker.InboundEvent do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.sdk.v1.EventGroupMarker.InboundEvent",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :inbound_event_id, 1, type: :int64, json_name: "inboundEventId"
end

defmodule Temporal.Api.Sdk.V1.EventGroupMarker.InboundUpdate do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.sdk.v1.EventGroupMarker.InboundUpdate",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :inbound_update_id, 1, type: :string, json_name: "inboundUpdateId"
end

defmodule Temporal.Api.Sdk.V1.EventGroupMarker do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.sdk.v1.EventGroupMarker",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  oneof :variant, 0

  field :label, 1, type: Temporal.Api.Sdk.V1.EventGroupMarker.Label, oneof: 0

  field :inbound_event, 2,
    type: Temporal.Api.Sdk.V1.EventGroupMarker.InboundEvent,
    json_name: "inboundEvent",
    oneof: 0

  field :inbound_update, 3,
    type: Temporal.Api.Sdk.V1.EventGroupMarker.InboundUpdate,
    json_name: "inboundUpdate",
    oneof: 0
end
