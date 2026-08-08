defmodule Temporal.Api.Enums.V1.FastForwardPollingResult do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "temporal.api.enums.v1.FastForwardPollingResult",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :FAST_FORWARD_POLLING_RESULT_UNSPECIFIED, 0
  field :FAST_FORWARD_POLLING_RESULT_POLL_TIMEOUT, 1
  field :FAST_FORWARD_POLLING_RESULT_FAST_FORWARD_COMPLETED, 2
  field :FAST_FORWARD_POLLING_RESULT_FAST_FORWARD_FAILED, 3
end
