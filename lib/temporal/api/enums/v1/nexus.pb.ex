defmodule Temporal.Api.Enums.V1.NexusHandlerErrorRetryBehavior do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "temporal.api.enums.v1.NexusHandlerErrorRetryBehavior",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_UNSPECIFIED, 0
  field :NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_RETRYABLE, 1
  field :NEXUS_HANDLER_ERROR_RETRY_BEHAVIOR_NON_RETRYABLE, 2
end

defmodule Temporal.Api.Enums.V1.NexusOperationExecutionStatus do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "temporal.api.enums.v1.NexusOperationExecutionStatus",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :NEXUS_OPERATION_EXECUTION_STATUS_UNSPECIFIED, 0
  field :NEXUS_OPERATION_EXECUTION_STATUS_RUNNING, 1
  field :NEXUS_OPERATION_EXECUTION_STATUS_COMPLETED, 2
  field :NEXUS_OPERATION_EXECUTION_STATUS_FAILED, 3
  field :NEXUS_OPERATION_EXECUTION_STATUS_CANCELED, 4
  field :NEXUS_OPERATION_EXECUTION_STATUS_TERMINATED, 5
  field :NEXUS_OPERATION_EXECUTION_STATUS_TIMED_OUT, 6
end

defmodule Temporal.Api.Enums.V1.NexusOperationWaitStage do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "temporal.api.enums.v1.NexusOperationWaitStage",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :NEXUS_OPERATION_WAIT_STAGE_UNSPECIFIED, 0
  field :NEXUS_OPERATION_WAIT_STAGE_STARTED, 1
  field :NEXUS_OPERATION_WAIT_STAGE_CLOSED, 2
end

defmodule Temporal.Api.Enums.V1.NexusOperationIdReusePolicy do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "temporal.api.enums.v1.NexusOperationIdReusePolicy",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :NEXUS_OPERATION_ID_REUSE_POLICY_UNSPECIFIED, 0
  field :NEXUS_OPERATION_ID_REUSE_POLICY_ALLOW_DUPLICATE, 1
  field :NEXUS_OPERATION_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY, 2
  field :NEXUS_OPERATION_ID_REUSE_POLICY_REJECT_DUPLICATE, 3
end

defmodule Temporal.Api.Enums.V1.NexusOperationIdConflictPolicy do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "temporal.api.enums.v1.NexusOperationIdConflictPolicy",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :NEXUS_OPERATION_ID_CONFLICT_POLICY_UNSPECIFIED, 0
  field :NEXUS_OPERATION_ID_CONFLICT_POLICY_FAIL, 1
  field :NEXUS_OPERATION_ID_CONFLICT_POLICY_USE_EXISTING, 2
end
