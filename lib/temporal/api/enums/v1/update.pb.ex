defmodule Temporal.Api.Enums.V1.UpdateWorkflowExecutionLifecycleStage do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :UPDATE_WORKFLOW_EXECUTION_LIFECYCLE_STAGE_UNSPECIFIED, 0
  field :UPDATE_WORKFLOW_EXECUTION_LIFECYCLE_STAGE_ADMITTED, 1
  field :UPDATE_WORKFLOW_EXECUTION_LIFECYCLE_STAGE_ACCEPTED, 2
  field :UPDATE_WORKFLOW_EXECUTION_LIFECYCLE_STAGE_COMPLETED, 3
end

defmodule Temporal.Api.Enums.V1.UpdateRequestedEventOrigin do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :UPDATE_REQUESTED_EVENT_ORIGIN_UNSPECIFIED, 0
  field :UPDATE_REQUESTED_EVENT_ORIGIN_REAPPLY, 1
end