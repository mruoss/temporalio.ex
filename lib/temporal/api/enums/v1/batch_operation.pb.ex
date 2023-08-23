defmodule Temporal.Api.Enums.V1.BatchOperationType do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :BATCH_OPERATION_TYPE_UNSPECIFIED, 0
  field :BATCH_OPERATION_TYPE_TERMINATE, 1
  field :BATCH_OPERATION_TYPE_CANCEL, 2
  field :BATCH_OPERATION_TYPE_SIGNAL, 3
  field :BATCH_OPERATION_TYPE_DELETE, 4
  field :BATCH_OPERATION_TYPE_RESET, 5
end

defmodule Temporal.Api.Enums.V1.BatchOperationState do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :BATCH_OPERATION_STATE_UNSPECIFIED, 0
  field :BATCH_OPERATION_STATE_RUNNING, 1
  field :BATCH_OPERATION_STATE_COMPLETED, 2
  field :BATCH_OPERATION_STATE_FAILED, 3
end