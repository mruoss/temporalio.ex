defmodule Temporal.Api.Enums.V1.NexusHandlerErrorRetryBehavior do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_UNSPECIFIED, 0
  field :NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_RETRYABLE, 1
  field :NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_NON_RETRYABLE, 2
end
