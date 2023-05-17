defmodule Temporal.Api.Sdk.V1.WorkflowTaskCompletedMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :core_used_flags, 1, repeated: true, type: :uint32, json_name: "coreUsedFlags"
  field :lang_used_flags, 2, repeated: true, type: :uint32, json_name: "langUsedFlags"
end