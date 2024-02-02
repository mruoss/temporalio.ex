defmodule Temporal.Api.Failure.V1.ApplicationFailureInfo do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :type, 1, type: :string
  field :non_retryable, 2, type: :bool, json_name: "nonRetryable"
  field :details, 3, type: Temporal.Api.Common.V1.Payloads
  field :next_retry_delay, 4, type: Google.Protobuf.Duration, json_name: "nextRetryDelay"
end

defmodule Temporal.Api.Failure.V1.TimeoutFailureInfo do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :timeout_type, 1,
    type: Temporal.Api.Enums.V1.TimeoutType,
    json_name: "timeoutType",
    enum: true

  field :last_heartbeat_details, 2,
    type: Temporal.Api.Common.V1.Payloads,
    json_name: "lastHeartbeatDetails"
end

defmodule Temporal.Api.Failure.V1.CanceledFailureInfo do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :details, 1, type: Temporal.Api.Common.V1.Payloads
end

defmodule Temporal.Api.Failure.V1.TerminatedFailureInfo do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"
end

defmodule Temporal.Api.Failure.V1.ServerFailureInfo do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :non_retryable, 1, type: :bool, json_name: "nonRetryable"
end

defmodule Temporal.Api.Failure.V1.ResetWorkflowFailureInfo do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :last_heartbeat_details, 1,
    type: Temporal.Api.Common.V1.Payloads,
    json_name: "lastHeartbeatDetails"
end

defmodule Temporal.Api.Failure.V1.ActivityFailureInfo do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :scheduled_event_id, 1, type: :int64, json_name: "scheduledEventId"
  field :started_event_id, 2, type: :int64, json_name: "startedEventId"
  field :identity, 3, type: :string
  field :activity_type, 4, type: Temporal.Api.Common.V1.ActivityType, json_name: "activityType"
  field :activity_id, 5, type: :string, json_name: "activityId"

  field :retry_state, 6,
    type: Temporal.Api.Enums.V1.RetryState,
    json_name: "retryState",
    enum: true
end

defmodule Temporal.Api.Failure.V1.ChildWorkflowExecutionFailureInfo do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :namespace, 1, type: :string

  field :workflow_execution, 2,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "workflowExecution"

  field :workflow_type, 3, type: Temporal.Api.Common.V1.WorkflowType, json_name: "workflowType"
  field :initiated_event_id, 4, type: :int64, json_name: "initiatedEventId"
  field :started_event_id, 5, type: :int64, json_name: "startedEventId"

  field :retry_state, 6,
    type: Temporal.Api.Enums.V1.RetryState,
    json_name: "retryState",
    enum: true
end

defmodule Temporal.Api.Failure.V1.Failure do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  oneof :failure_info, 0

  field :message, 1, type: :string
  field :source, 2, type: :string
  field :stack_trace, 3, type: :string, json_name: "stackTrace"

  field :encoded_attributes, 20,
    type: Temporal.Api.Common.V1.Payload,
    json_name: "encodedAttributes"

  field :cause, 4, type: Temporal.Api.Failure.V1.Failure

  field :application_failure_info, 5,
    type: Temporal.Api.Failure.V1.ApplicationFailureInfo,
    json_name: "applicationFailureInfo",
    oneof: 0

  field :timeout_failure_info, 6,
    type: Temporal.Api.Failure.V1.TimeoutFailureInfo,
    json_name: "timeoutFailureInfo",
    oneof: 0

  field :canceled_failure_info, 7,
    type: Temporal.Api.Failure.V1.CanceledFailureInfo,
    json_name: "canceledFailureInfo",
    oneof: 0

  field :terminated_failure_info, 8,
    type: Temporal.Api.Failure.V1.TerminatedFailureInfo,
    json_name: "terminatedFailureInfo",
    oneof: 0

  field :server_failure_info, 9,
    type: Temporal.Api.Failure.V1.ServerFailureInfo,
    json_name: "serverFailureInfo",
    oneof: 0

  field :reset_workflow_failure_info, 10,
    type: Temporal.Api.Failure.V1.ResetWorkflowFailureInfo,
    json_name: "resetWorkflowFailureInfo",
    oneof: 0

  field :activity_failure_info, 11,
    type: Temporal.Api.Failure.V1.ActivityFailureInfo,
    json_name: "activityFailureInfo",
    oneof: 0

  field :child_workflow_execution_failure_info, 12,
    type: Temporal.Api.Failure.V1.ChildWorkflowExecutionFailureInfo,
    json_name: "childWorkflowExecutionFailureInfo",
    oneof: 0
end