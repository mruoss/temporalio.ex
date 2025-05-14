defmodule Temporal.Api.Batch.V1.BatchOperationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :job_id, 1, type: :string, json_name: "jobId"
  field :state, 2, type: Temporal.Api.Enums.V1.BatchOperationState, enum: true
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :close_time, 4, type: Google.Protobuf.Timestamp, json_name: "closeTime"
end

defmodule Temporal.Api.Batch.V1.BatchOperationTermination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :details, 1, type: Temporal.Api.Common.V1.Payloads
  field :identity, 2, type: :string
end

defmodule Temporal.Api.Batch.V1.BatchOperationSignal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :signal, 1, type: :string
  field :input, 2, type: Temporal.Api.Common.V1.Payloads
  field :header, 3, type: Temporal.Api.Common.V1.Header
  field :identity, 4, type: :string
end

defmodule Temporal.Api.Batch.V1.BatchOperationCancellation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :identity, 1, type: :string
end

defmodule Temporal.Api.Batch.V1.BatchOperationDeletion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :identity, 1, type: :string
end

defmodule Temporal.Api.Batch.V1.BatchOperationReset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :identity, 3, type: :string
  field :options, 4, type: Temporal.Api.Common.V1.ResetOptions
  field :reset_type, 1, type: Temporal.Api.Enums.V1.ResetType, json_name: "resetType", enum: true

  field :reset_reapply_type, 2,
    type: Temporal.Api.Enums.V1.ResetReapplyType,
    json_name: "resetReapplyType",
    enum: true

  field :post_reset_operations, 5,
    repeated: true,
    type: Temporal.Api.Workflow.V1.PostResetOperation,
    json_name: "postResetOperations"
end

defmodule Temporal.Api.Batch.V1.BatchOperationUpdateWorkflowExecutionOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :identity, 1, type: :string

  field :workflow_execution_options, 2,
    type: Temporal.Api.Workflow.V1.WorkflowExecutionOptions,
    json_name: "workflowExecutionOptions"

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Temporal.Api.Batch.V1.BatchOperationUnpauseActivities do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :activity, 0

  field :identity, 1, type: :string
  field :type, 2, type: :string, oneof: 0
  field :match_all, 3, type: :bool, json_name: "matchAll", oneof: 0
  field :reset_attempts, 4, type: :bool, json_name: "resetAttempts"
  field :reset_heartbeat, 5, type: :bool, json_name: "resetHeartbeat"
  field :jitter, 6, type: Google.Protobuf.Duration
end

defmodule Temporal.Api.Batch.V1.BatchOperationTriggerWorkflowRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :rule, 0

  field :identity, 1, type: :string
  field :id, 2, type: :string, oneof: 0
  field :spec, 3, type: Temporal.Api.Rules.V1.WorkflowRuleSpec, oneof: 0
end
