defmodule Temporal.Api.Enums.V1.ResetReapplyType do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :RESET_REAPPLY_TYPE_UNSPECIFIED, 0
  field :RESET_REAPPLY_TYPE_SIGNAL, 1
  field :RESET_REAPPLY_TYPE_NONE, 2
end

defmodule Temporal.Api.Enums.V1.ResetType do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :RESET_TYPE_UNSPECIFIED, 0
  field :RESET_TYPE_FIRST_WORKFLOW_TASK, 1
  field :RESET_TYPE_LAST_WORKFLOW_TASK, 2
end