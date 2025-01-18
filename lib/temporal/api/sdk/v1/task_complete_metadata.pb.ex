defmodule Temporal.Api.Sdk.V1.WorkflowTaskCompletedMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :core_used_flags, 1, repeated: true, type: :uint32, json_name: "coreUsedFlags"
  field :lang_used_flags, 2, repeated: true, type: :uint32, json_name: "langUsedFlags"
  field :sdk_name, 3, type: :string, json_name: "sdkName"
  field :sdk_version, 4, type: :string, json_name: "sdkVersion"
end
