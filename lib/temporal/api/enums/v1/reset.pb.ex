defmodule Temporal.Api.Enums.V1.ResetReapplyType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RESET_REAPPLY_TYPE_UNSPECIFIED, 0
  field :RESET_REAPPLY_TYPE_SIGNAL, 1
  field :RESET_REAPPLY_TYPE_NONE, 2
end