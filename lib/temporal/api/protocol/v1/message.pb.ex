defmodule Temporal.Api.Protocol.V1.Message do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :sequencing_id, 0

  field :id, 1, type: :string
  field :protocol_instance_id, 2, type: :string, json_name: "protocolInstanceId"
  field :event_id, 3, type: :int64, json_name: "eventId", oneof: 0
  field :command_index, 4, type: :int64, json_name: "commandIndex", oneof: 0
  field :body, 5, type: Google.Protobuf.Any
end
