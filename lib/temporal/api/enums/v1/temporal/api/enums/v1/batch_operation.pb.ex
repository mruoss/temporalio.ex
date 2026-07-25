defmodule Temporal.Api.Enums.V1.BatchOperationType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "temporal.api.enums.v1.BatchOperationType",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :BATCH_OPERATION_TYPE_UNSPECIFIED, 0
  field :BATCH_OPERATION_TYPE_TERMINATE, 1
  field :BATCH_OPERATION_TYPE_TERMINATE_WORKFLOW, 13
  field :BATCH_OPERATION_TYPE_CANCEL, 2
  field :BATCH_OPERATION_TYPE_CANCEL_WORKFLOW, 14
  field :BATCH_OPERATION_TYPE_SIGNAL, 3
  field :BATCH_OPERATION_TYPE_SIGNAL_WORKFLOW, 15
  field :BATCH_OPERATION_TYPE_DELETE, 4
  field :BATCH_OPERATION_TYPE_DELETE_WORKFLOW, 16
  field :BATCH_OPERATION_TYPE_RESET, 5
  field :BATCH_OPERATION_TYPE_RESET_WORKFLOW, 17
  field :BATCH_OPERATION_TYPE_UPDATE_EXECUTION_OPTIONS, 6
  field :BATCH_OPERATION_TYPE_UPDATE_WORKFLOW_EXECUTION_OPTIONS, 18
  field :BATCH_OPERATION_TYPE_UNPAUSE_ACTIVITY, 7
  field :BATCH_OPERATION_TYPE_UPDATE_ACTIVITY_OPTIONS, 8
  field :BATCH_OPERATION_TYPE_RESET_ACTIVITY, 9
  field :BATCH_OPERATION_TYPE_TERMINATE_ACTIVITY, 10
  field :BATCH_OPERATION_TYPE_CANCEL_ACTIVITY, 11
  field :BATCH_OPERATION_TYPE_DELETE_ACTIVITY, 12
end

defmodule Temporal.Api.Enums.V1.BatchOperationState do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "temporal.api.enums.v1.BatchOperationState",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :BATCH_OPERATION_STATE_UNSPECIFIED, 0
  field :BATCH_OPERATION_STATE_RUNNING, 1
  field :BATCH_OPERATION_STATE_COMPLETED, 2
  field :BATCH_OPERATION_STATE_FAILED, 3
end
