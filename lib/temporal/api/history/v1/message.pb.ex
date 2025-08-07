defmodule Temporal.Api.History.V1.WorkflowExecutionStartedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workflow_type, 1, type: Temporal.Api.Common.V1.WorkflowType, json_name: "workflowType"
  field :parent_workflow_namespace, 2, type: :string, json_name: "parentWorkflowNamespace"
  field :parent_workflow_namespace_id, 27, type: :string, json_name: "parentWorkflowNamespaceId"

  field :parent_workflow_execution, 3,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "parentWorkflowExecution"

  field :parent_initiated_event_id, 4, type: :int64, json_name: "parentInitiatedEventId"
  field :task_queue, 5, type: Temporal.Api.Taskqueue.V1.TaskQueue, json_name: "taskQueue"
  field :input, 6, type: Temporal.Api.Common.V1.Payloads

  field :workflow_execution_timeout, 7,
    type: Google.Protobuf.Duration,
    json_name: "workflowExecutionTimeout"

  field :workflow_run_timeout, 8, type: Google.Protobuf.Duration, json_name: "workflowRunTimeout"

  field :workflow_task_timeout, 9,
    type: Google.Protobuf.Duration,
    json_name: "workflowTaskTimeout"

  field :continued_execution_run_id, 10, type: :string, json_name: "continuedExecutionRunId"
  field :initiator, 11, type: Temporal.Api.Enums.V1.ContinueAsNewInitiator, enum: true

  field :continued_failure, 12,
    type: Temporal.Api.Failure.V1.Failure,
    json_name: "continuedFailure"

  field :last_completion_result, 13,
    type: Temporal.Api.Common.V1.Payloads,
    json_name: "lastCompletionResult"

  field :original_execution_run_id, 14, type: :string, json_name: "originalExecutionRunId"
  field :identity, 15, type: :string
  field :first_execution_run_id, 16, type: :string, json_name: "firstExecutionRunId"
  field :retry_policy, 17, type: Temporal.Api.Common.V1.RetryPolicy, json_name: "retryPolicy"
  field :attempt, 18, type: :int32

  field :workflow_execution_expiration_time, 19,
    type: Google.Protobuf.Timestamp,
    json_name: "workflowExecutionExpirationTime"

  field :cron_schedule, 20, type: :string, json_name: "cronSchedule"

  field :first_workflow_task_backoff, 21,
    type: Google.Protobuf.Duration,
    json_name: "firstWorkflowTaskBackoff"

  field :memo, 22, type: Temporal.Api.Common.V1.Memo

  field :search_attributes, 23,
    type: Temporal.Api.Common.V1.SearchAttributes,
    json_name: "searchAttributes"

  field :prev_auto_reset_points, 24,
    type: Temporal.Api.Workflow.V1.ResetPoints,
    json_name: "prevAutoResetPoints"

  field :header, 25, type: Temporal.Api.Common.V1.Header

  field :parent_initiated_event_version, 26,
    type: :int64,
    json_name: "parentInitiatedEventVersion"

  field :workflow_id, 28, type: :string, json_name: "workflowId"

  field :source_version_stamp, 29,
    type: Temporal.Api.Common.V1.WorkerVersionStamp,
    json_name: "sourceVersionStamp",
    deprecated: true

  field :completion_callbacks, 30,
    repeated: true,
    type: Temporal.Api.Common.V1.Callback,
    json_name: "completionCallbacks"

  field :root_workflow_execution, 31,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "rootWorkflowExecution"

  field :inherited_build_id, 32, type: :string, json_name: "inheritedBuildId", deprecated: true

  field :versioning_override, 33,
    type: Temporal.Api.Workflow.V1.VersioningOverride,
    json_name: "versioningOverride"

  field :parent_pinned_worker_deployment_version, 34,
    type: :string,
    json_name: "parentPinnedWorkerDeploymentVersion",
    deprecated: true

  field :priority, 35, type: Temporal.Api.Common.V1.Priority

  field :inherited_pinned_version, 37,
    type: Temporal.Api.Deployment.V1.WorkerDeploymentVersion,
    json_name: "inheritedPinnedVersion"
end

defmodule Temporal.Api.History.V1.WorkflowExecutionCompletedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :result, 1, type: Temporal.Api.Common.V1.Payloads

  field :workflow_task_completed_event_id, 2,
    type: :int64,
    json_name: "workflowTaskCompletedEventId"

  field :new_execution_run_id, 3, type: :string, json_name: "newExecutionRunId"
end

defmodule Temporal.Api.History.V1.WorkflowExecutionFailedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :failure, 1, type: Temporal.Api.Failure.V1.Failure

  field :retry_state, 2,
    type: Temporal.Api.Enums.V1.RetryState,
    json_name: "retryState",
    enum: true

  field :workflow_task_completed_event_id, 3,
    type: :int64,
    json_name: "workflowTaskCompletedEventId"

  field :new_execution_run_id, 4, type: :string, json_name: "newExecutionRunId"
end

defmodule Temporal.Api.History.V1.WorkflowExecutionTimedOutEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :retry_state, 1,
    type: Temporal.Api.Enums.V1.RetryState,
    json_name: "retryState",
    enum: true

  field :new_execution_run_id, 2, type: :string, json_name: "newExecutionRunId"
end

defmodule Temporal.Api.History.V1.WorkflowExecutionContinuedAsNewEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :new_execution_run_id, 1, type: :string, json_name: "newExecutionRunId"
  field :workflow_type, 2, type: Temporal.Api.Common.V1.WorkflowType, json_name: "workflowType"
  field :task_queue, 3, type: Temporal.Api.Taskqueue.V1.TaskQueue, json_name: "taskQueue"
  field :input, 4, type: Temporal.Api.Common.V1.Payloads
  field :workflow_run_timeout, 5, type: Google.Protobuf.Duration, json_name: "workflowRunTimeout"

  field :workflow_task_timeout, 6,
    type: Google.Protobuf.Duration,
    json_name: "workflowTaskTimeout"

  field :workflow_task_completed_event_id, 7,
    type: :int64,
    json_name: "workflowTaskCompletedEventId"

  field :backoff_start_interval, 8,
    type: Google.Protobuf.Duration,
    json_name: "backoffStartInterval"

  field :initiator, 9, type: Temporal.Api.Enums.V1.ContinueAsNewInitiator, enum: true
  field :failure, 10, type: Temporal.Api.Failure.V1.Failure, deprecated: true

  field :last_completion_result, 11,
    type: Temporal.Api.Common.V1.Payloads,
    json_name: "lastCompletionResult"

  field :header, 12, type: Temporal.Api.Common.V1.Header
  field :memo, 13, type: Temporal.Api.Common.V1.Memo

  field :search_attributes, 14,
    type: Temporal.Api.Common.V1.SearchAttributes,
    json_name: "searchAttributes"

  field :inherit_build_id, 15, type: :bool, json_name: "inheritBuildId", deprecated: true
end

defmodule Temporal.Api.History.V1.WorkflowTaskScheduledEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :task_queue, 1, type: Temporal.Api.Taskqueue.V1.TaskQueue, json_name: "taskQueue"

  field :start_to_close_timeout, 2,
    type: Google.Protobuf.Duration,
    json_name: "startToCloseTimeout"

  field :attempt, 3, type: :int32
end

defmodule Temporal.Api.History.V1.WorkflowTaskStartedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :scheduled_event_id, 1, type: :int64, json_name: "scheduledEventId"
  field :identity, 2, type: :string
  field :request_id, 3, type: :string, json_name: "requestId"
  field :suggest_continue_as_new, 4, type: :bool, json_name: "suggestContinueAsNew"
  field :history_size_bytes, 5, type: :int64, json_name: "historySizeBytes"

  field :worker_version, 6,
    type: Temporal.Api.Common.V1.WorkerVersionStamp,
    json_name: "workerVersion",
    deprecated: true

  field :build_id_redirect_counter, 7,
    type: :int64,
    json_name: "buildIdRedirectCounter",
    deprecated: true
end

defmodule Temporal.Api.History.V1.WorkflowTaskCompletedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :scheduled_event_id, 1, type: :int64, json_name: "scheduledEventId"
  field :started_event_id, 2, type: :int64, json_name: "startedEventId"
  field :identity, 3, type: :string
  field :binary_checksum, 4, type: :string, json_name: "binaryChecksum", deprecated: true

  field :worker_version, 5,
    type: Temporal.Api.Common.V1.WorkerVersionStamp,
    json_name: "workerVersion",
    deprecated: true

  field :sdk_metadata, 6,
    type: Temporal.Api.Sdk.V1.WorkflowTaskCompletedMetadata,
    json_name: "sdkMetadata"

  field :metering_metadata, 13,
    type: Temporal.Api.Common.V1.MeteringMetadata,
    json_name: "meteringMetadata"

  field :deployment, 7, type: Temporal.Api.Deployment.V1.Deployment, deprecated: true

  field :versioning_behavior, 8,
    type: Temporal.Api.Enums.V1.VersioningBehavior,
    json_name: "versioningBehavior",
    enum: true

  field :worker_deployment_version, 9,
    type: :string,
    json_name: "workerDeploymentVersion",
    deprecated: true

  field :worker_deployment_name, 10, type: :string, json_name: "workerDeploymentName"

  field :deployment_version, 11,
    type: Temporal.Api.Deployment.V1.WorkerDeploymentVersion,
    json_name: "deploymentVersion"
end

defmodule Temporal.Api.History.V1.WorkflowTaskTimedOutEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :scheduled_event_id, 1, type: :int64, json_name: "scheduledEventId"
  field :started_event_id, 2, type: :int64, json_name: "startedEventId"

  field :timeout_type, 3,
    type: Temporal.Api.Enums.V1.TimeoutType,
    json_name: "timeoutType",
    enum: true
end

defmodule Temporal.Api.History.V1.WorkflowTaskFailedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :scheduled_event_id, 1, type: :int64, json_name: "scheduledEventId"
  field :started_event_id, 2, type: :int64, json_name: "startedEventId"
  field :cause, 3, type: Temporal.Api.Enums.V1.WorkflowTaskFailedCause, enum: true
  field :failure, 4, type: Temporal.Api.Failure.V1.Failure
  field :identity, 5, type: :string
  field :base_run_id, 6, type: :string, json_name: "baseRunId"
  field :new_run_id, 7, type: :string, json_name: "newRunId"
  field :fork_event_version, 8, type: :int64, json_name: "forkEventVersion"
  field :binary_checksum, 9, type: :string, json_name: "binaryChecksum", deprecated: true

  field :worker_version, 10,
    type: Temporal.Api.Common.V1.WorkerVersionStamp,
    json_name: "workerVersion",
    deprecated: true
end

defmodule Temporal.Api.History.V1.ActivityTaskScheduledEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :activity_id, 1, type: :string, json_name: "activityId"
  field :activity_type, 2, type: Temporal.Api.Common.V1.ActivityType, json_name: "activityType"
  field :task_queue, 4, type: Temporal.Api.Taskqueue.V1.TaskQueue, json_name: "taskQueue"
  field :header, 5, type: Temporal.Api.Common.V1.Header
  field :input, 6, type: Temporal.Api.Common.V1.Payloads

  field :schedule_to_close_timeout, 7,
    type: Google.Protobuf.Duration,
    json_name: "scheduleToCloseTimeout"

  field :schedule_to_start_timeout, 8,
    type: Google.Protobuf.Duration,
    json_name: "scheduleToStartTimeout"

  field :start_to_close_timeout, 9,
    type: Google.Protobuf.Duration,
    json_name: "startToCloseTimeout"

  field :heartbeat_timeout, 10, type: Google.Protobuf.Duration, json_name: "heartbeatTimeout"

  field :workflow_task_completed_event_id, 11,
    type: :int64,
    json_name: "workflowTaskCompletedEventId"

  field :retry_policy, 12, type: Temporal.Api.Common.V1.RetryPolicy, json_name: "retryPolicy"
  field :use_workflow_build_id, 13, type: :bool, json_name: "useWorkflowBuildId", deprecated: true
  field :priority, 14, type: Temporal.Api.Common.V1.Priority
end

defmodule Temporal.Api.History.V1.ActivityTaskStartedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :scheduled_event_id, 1, type: :int64, json_name: "scheduledEventId"
  field :identity, 2, type: :string
  field :request_id, 3, type: :string, json_name: "requestId"
  field :attempt, 4, type: :int32
  field :last_failure, 5, type: Temporal.Api.Failure.V1.Failure, json_name: "lastFailure"

  field :worker_version, 6,
    type: Temporal.Api.Common.V1.WorkerVersionStamp,
    json_name: "workerVersion",
    deprecated: true

  field :build_id_redirect_counter, 7,
    type: :int64,
    json_name: "buildIdRedirectCounter",
    deprecated: true
end

defmodule Temporal.Api.History.V1.ActivityTaskCompletedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :result, 1, type: Temporal.Api.Common.V1.Payloads
  field :scheduled_event_id, 2, type: :int64, json_name: "scheduledEventId"
  field :started_event_id, 3, type: :int64, json_name: "startedEventId"
  field :identity, 4, type: :string

  field :worker_version, 5,
    type: Temporal.Api.Common.V1.WorkerVersionStamp,
    json_name: "workerVersion",
    deprecated: true
end

defmodule Temporal.Api.History.V1.ActivityTaskFailedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :failure, 1, type: Temporal.Api.Failure.V1.Failure
  field :scheduled_event_id, 2, type: :int64, json_name: "scheduledEventId"
  field :started_event_id, 3, type: :int64, json_name: "startedEventId"
  field :identity, 4, type: :string

  field :retry_state, 5,
    type: Temporal.Api.Enums.V1.RetryState,
    json_name: "retryState",
    enum: true

  field :worker_version, 6,
    type: Temporal.Api.Common.V1.WorkerVersionStamp,
    json_name: "workerVersion",
    deprecated: true
end

defmodule Temporal.Api.History.V1.ActivityTaskTimedOutEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :failure, 1, type: Temporal.Api.Failure.V1.Failure
  field :scheduled_event_id, 2, type: :int64, json_name: "scheduledEventId"
  field :started_event_id, 3, type: :int64, json_name: "startedEventId"

  field :retry_state, 4,
    type: Temporal.Api.Enums.V1.RetryState,
    json_name: "retryState",
    enum: true
end

defmodule Temporal.Api.History.V1.ActivityTaskCancelRequestedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :scheduled_event_id, 1, type: :int64, json_name: "scheduledEventId"

  field :workflow_task_completed_event_id, 2,
    type: :int64,
    json_name: "workflowTaskCompletedEventId"
end

defmodule Temporal.Api.History.V1.ActivityTaskCanceledEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :details, 1, type: Temporal.Api.Common.V1.Payloads

  field :latest_cancel_requested_event_id, 2,
    type: :int64,
    json_name: "latestCancelRequestedEventId"

  field :scheduled_event_id, 3, type: :int64, json_name: "scheduledEventId"
  field :started_event_id, 4, type: :int64, json_name: "startedEventId"
  field :identity, 5, type: :string

  field :worker_version, 6,
    type: Temporal.Api.Common.V1.WorkerVersionStamp,
    json_name: "workerVersion",
    deprecated: true
end

defmodule Temporal.Api.History.V1.TimerStartedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :timer_id, 1, type: :string, json_name: "timerId"
  field :start_to_fire_timeout, 2, type: Google.Protobuf.Duration, json_name: "startToFireTimeout"

  field :workflow_task_completed_event_id, 3,
    type: :int64,
    json_name: "workflowTaskCompletedEventId"
end

defmodule Temporal.Api.History.V1.TimerFiredEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :timer_id, 1, type: :string, json_name: "timerId"
  field :started_event_id, 2, type: :int64, json_name: "startedEventId"
end

defmodule Temporal.Api.History.V1.TimerCanceledEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :timer_id, 1, type: :string, json_name: "timerId"
  field :started_event_id, 2, type: :int64, json_name: "startedEventId"

  field :workflow_task_completed_event_id, 3,
    type: :int64,
    json_name: "workflowTaskCompletedEventId"

  field :identity, 4, type: :string
end

defmodule Temporal.Api.History.V1.WorkflowExecutionCancelRequestedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cause, 1, type: :string
  field :external_initiated_event_id, 2, type: :int64, json_name: "externalInitiatedEventId"

  field :external_workflow_execution, 3,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "externalWorkflowExecution"

  field :identity, 4, type: :string
end

defmodule Temporal.Api.History.V1.WorkflowExecutionCanceledEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workflow_task_completed_event_id, 1,
    type: :int64,
    json_name: "workflowTaskCompletedEventId"

  field :details, 2, type: Temporal.Api.Common.V1.Payloads
end

defmodule Temporal.Api.History.V1.MarkerRecordedEventAttributes.DetailsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Temporal.Api.Common.V1.Payloads
end

defmodule Temporal.Api.History.V1.MarkerRecordedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :marker_name, 1, type: :string, json_name: "markerName"

  field :details, 2,
    repeated: true,
    type: Temporal.Api.History.V1.MarkerRecordedEventAttributes.DetailsEntry,
    map: true

  field :workflow_task_completed_event_id, 3,
    type: :int64,
    json_name: "workflowTaskCompletedEventId"

  field :header, 4, type: Temporal.Api.Common.V1.Header
  field :failure, 5, type: Temporal.Api.Failure.V1.Failure
end

defmodule Temporal.Api.History.V1.WorkflowExecutionSignaledEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :signal_name, 1, type: :string, json_name: "signalName"
  field :input, 2, type: Temporal.Api.Common.V1.Payloads
  field :identity, 3, type: :string
  field :header, 4, type: Temporal.Api.Common.V1.Header

  field :skip_generate_workflow_task, 5,
    type: :bool,
    json_name: "skipGenerateWorkflowTask",
    deprecated: true

  field :external_workflow_execution, 6,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "externalWorkflowExecution"
end

defmodule Temporal.Api.History.V1.WorkflowExecutionTerminatedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :reason, 1, type: :string
  field :details, 2, type: Temporal.Api.Common.V1.Payloads
  field :identity, 3, type: :string
end

defmodule Temporal.Api.History.V1.RequestCancelExternalWorkflowExecutionInitiatedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workflow_task_completed_event_id, 1,
    type: :int64,
    json_name: "workflowTaskCompletedEventId"

  field :namespace, 2, type: :string
  field :namespace_id, 7, type: :string, json_name: "namespaceId"

  field :workflow_execution, 3,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "workflowExecution"

  field :control, 4, type: :string, deprecated: true
  field :child_workflow_only, 5, type: :bool, json_name: "childWorkflowOnly"
  field :reason, 6, type: :string
end

defmodule Temporal.Api.History.V1.RequestCancelExternalWorkflowExecutionFailedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cause, 1,
    type: Temporal.Api.Enums.V1.CancelExternalWorkflowExecutionFailedCause,
    enum: true

  field :workflow_task_completed_event_id, 2,
    type: :int64,
    json_name: "workflowTaskCompletedEventId"

  field :namespace, 3, type: :string
  field :namespace_id, 7, type: :string, json_name: "namespaceId"

  field :workflow_execution, 4,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "workflowExecution"

  field :initiated_event_id, 5, type: :int64, json_name: "initiatedEventId"
  field :control, 6, type: :string, deprecated: true
end

defmodule Temporal.Api.History.V1.ExternalWorkflowExecutionCancelRequestedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :initiated_event_id, 1, type: :int64, json_name: "initiatedEventId"
  field :namespace, 2, type: :string
  field :namespace_id, 4, type: :string, json_name: "namespaceId"

  field :workflow_execution, 3,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "workflowExecution"
end

defmodule Temporal.Api.History.V1.SignalExternalWorkflowExecutionInitiatedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workflow_task_completed_event_id, 1,
    type: :int64,
    json_name: "workflowTaskCompletedEventId"

  field :namespace, 2, type: :string
  field :namespace_id, 9, type: :string, json_name: "namespaceId"

  field :workflow_execution, 3,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "workflowExecution"

  field :signal_name, 4, type: :string, json_name: "signalName"
  field :input, 5, type: Temporal.Api.Common.V1.Payloads
  field :control, 6, type: :string, deprecated: true
  field :child_workflow_only, 7, type: :bool, json_name: "childWorkflowOnly"
  field :header, 8, type: Temporal.Api.Common.V1.Header
end

defmodule Temporal.Api.History.V1.SignalExternalWorkflowExecutionFailedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cause, 1,
    type: Temporal.Api.Enums.V1.SignalExternalWorkflowExecutionFailedCause,
    enum: true

  field :workflow_task_completed_event_id, 2,
    type: :int64,
    json_name: "workflowTaskCompletedEventId"

  field :namespace, 3, type: :string
  field :namespace_id, 7, type: :string, json_name: "namespaceId"

  field :workflow_execution, 4,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "workflowExecution"

  field :initiated_event_id, 5, type: :int64, json_name: "initiatedEventId"
  field :control, 6, type: :string, deprecated: true
end

defmodule Temporal.Api.History.V1.ExternalWorkflowExecutionSignaledEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :initiated_event_id, 1, type: :int64, json_name: "initiatedEventId"
  field :namespace, 2, type: :string
  field :namespace_id, 5, type: :string, json_name: "namespaceId"

  field :workflow_execution, 3,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "workflowExecution"

  field :control, 4, type: :string, deprecated: true
end

defmodule Temporal.Api.History.V1.UpsertWorkflowSearchAttributesEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workflow_task_completed_event_id, 1,
    type: :int64,
    json_name: "workflowTaskCompletedEventId"

  field :search_attributes, 2,
    type: Temporal.Api.Common.V1.SearchAttributes,
    json_name: "searchAttributes"
end

defmodule Temporal.Api.History.V1.WorkflowPropertiesModifiedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workflow_task_completed_event_id, 1,
    type: :int64,
    json_name: "workflowTaskCompletedEventId"

  field :upserted_memo, 2, type: Temporal.Api.Common.V1.Memo, json_name: "upsertedMemo"
end

defmodule Temporal.Api.History.V1.StartChildWorkflowExecutionInitiatedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :namespace_id, 18, type: :string, json_name: "namespaceId"
  field :workflow_id, 2, type: :string, json_name: "workflowId"
  field :workflow_type, 3, type: Temporal.Api.Common.V1.WorkflowType, json_name: "workflowType"
  field :task_queue, 4, type: Temporal.Api.Taskqueue.V1.TaskQueue, json_name: "taskQueue"
  field :input, 5, type: Temporal.Api.Common.V1.Payloads

  field :workflow_execution_timeout, 6,
    type: Google.Protobuf.Duration,
    json_name: "workflowExecutionTimeout"

  field :workflow_run_timeout, 7, type: Google.Protobuf.Duration, json_name: "workflowRunTimeout"

  field :workflow_task_timeout, 8,
    type: Google.Protobuf.Duration,
    json_name: "workflowTaskTimeout"

  field :parent_close_policy, 9,
    type: Temporal.Api.Enums.V1.ParentClosePolicy,
    json_name: "parentClosePolicy",
    enum: true

  field :control, 10, type: :string, deprecated: true

  field :workflow_task_completed_event_id, 11,
    type: :int64,
    json_name: "workflowTaskCompletedEventId"

  field :workflow_id_reuse_policy, 12,
    type: Temporal.Api.Enums.V1.WorkflowIdReusePolicy,
    json_name: "workflowIdReusePolicy",
    enum: true

  field :retry_policy, 13, type: Temporal.Api.Common.V1.RetryPolicy, json_name: "retryPolicy"
  field :cron_schedule, 14, type: :string, json_name: "cronSchedule"
  field :header, 15, type: Temporal.Api.Common.V1.Header
  field :memo, 16, type: Temporal.Api.Common.V1.Memo

  field :search_attributes, 17,
    type: Temporal.Api.Common.V1.SearchAttributes,
    json_name: "searchAttributes"

  field :inherit_build_id, 19, type: :bool, json_name: "inheritBuildId", deprecated: true
  field :priority, 20, type: Temporal.Api.Common.V1.Priority
end

defmodule Temporal.Api.History.V1.StartChildWorkflowExecutionFailedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :namespace_id, 8, type: :string, json_name: "namespaceId"
  field :workflow_id, 2, type: :string, json_name: "workflowId"
  field :workflow_type, 3, type: Temporal.Api.Common.V1.WorkflowType, json_name: "workflowType"
  field :cause, 4, type: Temporal.Api.Enums.V1.StartChildWorkflowExecutionFailedCause, enum: true
  field :control, 5, type: :string, deprecated: true
  field :initiated_event_id, 6, type: :int64, json_name: "initiatedEventId"

  field :workflow_task_completed_event_id, 7,
    type: :int64,
    json_name: "workflowTaskCompletedEventId"
end

defmodule Temporal.Api.History.V1.ChildWorkflowExecutionStartedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :namespace_id, 6, type: :string, json_name: "namespaceId"
  field :initiated_event_id, 2, type: :int64, json_name: "initiatedEventId"

  field :workflow_execution, 3,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "workflowExecution"

  field :workflow_type, 4, type: Temporal.Api.Common.V1.WorkflowType, json_name: "workflowType"
  field :header, 5, type: Temporal.Api.Common.V1.Header
end

defmodule Temporal.Api.History.V1.ChildWorkflowExecutionCompletedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :result, 1, type: Temporal.Api.Common.V1.Payloads
  field :namespace, 2, type: :string
  field :namespace_id, 7, type: :string, json_name: "namespaceId"

  field :workflow_execution, 3,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "workflowExecution"

  field :workflow_type, 4, type: Temporal.Api.Common.V1.WorkflowType, json_name: "workflowType"
  field :initiated_event_id, 5, type: :int64, json_name: "initiatedEventId"
  field :started_event_id, 6, type: :int64, json_name: "startedEventId"
end

defmodule Temporal.Api.History.V1.ChildWorkflowExecutionFailedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :failure, 1, type: Temporal.Api.Failure.V1.Failure
  field :namespace, 2, type: :string
  field :namespace_id, 8, type: :string, json_name: "namespaceId"

  field :workflow_execution, 3,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "workflowExecution"

  field :workflow_type, 4, type: Temporal.Api.Common.V1.WorkflowType, json_name: "workflowType"
  field :initiated_event_id, 5, type: :int64, json_name: "initiatedEventId"
  field :started_event_id, 6, type: :int64, json_name: "startedEventId"

  field :retry_state, 7,
    type: Temporal.Api.Enums.V1.RetryState,
    json_name: "retryState",
    enum: true
end

defmodule Temporal.Api.History.V1.ChildWorkflowExecutionCanceledEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :details, 1, type: Temporal.Api.Common.V1.Payloads
  field :namespace, 2, type: :string
  field :namespace_id, 7, type: :string, json_name: "namespaceId"

  field :workflow_execution, 3,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "workflowExecution"

  field :workflow_type, 4, type: Temporal.Api.Common.V1.WorkflowType, json_name: "workflowType"
  field :initiated_event_id, 5, type: :int64, json_name: "initiatedEventId"
  field :started_event_id, 6, type: :int64, json_name: "startedEventId"
end

defmodule Temporal.Api.History.V1.ChildWorkflowExecutionTimedOutEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :namespace_id, 7, type: :string, json_name: "namespaceId"

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

defmodule Temporal.Api.History.V1.ChildWorkflowExecutionTerminatedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :namespace_id, 6, type: :string, json_name: "namespaceId"

  field :workflow_execution, 2,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "workflowExecution"

  field :workflow_type, 3, type: Temporal.Api.Common.V1.WorkflowType, json_name: "workflowType"
  field :initiated_event_id, 4, type: :int64, json_name: "initiatedEventId"
  field :started_event_id, 5, type: :int64, json_name: "startedEventId"
end

defmodule Temporal.Api.History.V1.WorkflowExecutionOptionsUpdatedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :versioning_override, 1,
    type: Temporal.Api.Workflow.V1.VersioningOverride,
    json_name: "versioningOverride"

  field :unset_versioning_override, 2, type: :bool, json_name: "unsetVersioningOverride"
  field :attached_request_id, 3, type: :string, json_name: "attachedRequestId"

  field :attached_completion_callbacks, 4,
    repeated: true,
    type: Temporal.Api.Common.V1.Callback,
    json_name: "attachedCompletionCallbacks"
end

defmodule Temporal.Api.History.V1.WorkflowPropertiesModifiedExternallyEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :new_task_queue, 1, type: :string, json_name: "newTaskQueue"

  field :new_workflow_task_timeout, 2,
    type: Google.Protobuf.Duration,
    json_name: "newWorkflowTaskTimeout"

  field :new_workflow_run_timeout, 3,
    type: Google.Protobuf.Duration,
    json_name: "newWorkflowRunTimeout"

  field :new_workflow_execution_timeout, 4,
    type: Google.Protobuf.Duration,
    json_name: "newWorkflowExecutionTimeout"

  field :upserted_memo, 5, type: Temporal.Api.Common.V1.Memo, json_name: "upsertedMemo"
end

defmodule Temporal.Api.History.V1.ActivityPropertiesModifiedExternallyEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :scheduled_event_id, 1, type: :int64, json_name: "scheduledEventId"

  field :new_retry_policy, 2,
    type: Temporal.Api.Common.V1.RetryPolicy,
    json_name: "newRetryPolicy"
end

defmodule Temporal.Api.History.V1.WorkflowExecutionUpdateAcceptedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :protocol_instance_id, 1, type: :string, json_name: "protocolInstanceId"
  field :accepted_request_message_id, 2, type: :string, json_name: "acceptedRequestMessageId"

  field :accepted_request_sequencing_event_id, 3,
    type: :int64,
    json_name: "acceptedRequestSequencingEventId"

  field :accepted_request, 4, type: Temporal.Api.Update.V1.Request, json_name: "acceptedRequest"
end

defmodule Temporal.Api.History.V1.WorkflowExecutionUpdateCompletedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :meta, 1, type: Temporal.Api.Update.V1.Meta
  field :accepted_event_id, 3, type: :int64, json_name: "acceptedEventId"
  field :outcome, 2, type: Temporal.Api.Update.V1.Outcome
end

defmodule Temporal.Api.History.V1.WorkflowExecutionUpdateRejectedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :protocol_instance_id, 1, type: :string, json_name: "protocolInstanceId"
  field :rejected_request_message_id, 2, type: :string, json_name: "rejectedRequestMessageId"

  field :rejected_request_sequencing_event_id, 3,
    type: :int64,
    json_name: "rejectedRequestSequencingEventId"

  field :rejected_request, 4, type: Temporal.Api.Update.V1.Request, json_name: "rejectedRequest"
  field :failure, 5, type: Temporal.Api.Failure.V1.Failure
end

defmodule Temporal.Api.History.V1.WorkflowExecutionUpdateAdmittedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :request, 1, type: Temporal.Api.Update.V1.Request
  field :origin, 2, type: Temporal.Api.Enums.V1.UpdateAdmittedEventOrigin, enum: true
end

defmodule Temporal.Api.History.V1.NexusOperationScheduledEventAttributes.NexusHeaderEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Temporal.Api.History.V1.NexusOperationScheduledEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :endpoint, 1, type: :string
  field :service, 2, type: :string
  field :operation, 3, type: :string
  field :input, 4, type: Temporal.Api.Common.V1.Payload

  field :schedule_to_close_timeout, 5,
    type: Google.Protobuf.Duration,
    json_name: "scheduleToCloseTimeout"

  field :nexus_header, 6,
    repeated: true,
    type: Temporal.Api.History.V1.NexusOperationScheduledEventAttributes.NexusHeaderEntry,
    json_name: "nexusHeader",
    map: true

  field :workflow_task_completed_event_id, 7,
    type: :int64,
    json_name: "workflowTaskCompletedEventId"

  field :request_id, 8, type: :string, json_name: "requestId"
  field :endpoint_id, 9, type: :string, json_name: "endpointId"
end

defmodule Temporal.Api.History.V1.NexusOperationStartedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :scheduled_event_id, 1, type: :int64, json_name: "scheduledEventId"
  field :operation_id, 3, type: :string, json_name: "operationId", deprecated: true
  field :request_id, 4, type: :string, json_name: "requestId"
  field :operation_token, 5, type: :string, json_name: "operationToken"
end

defmodule Temporal.Api.History.V1.NexusOperationCompletedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :scheduled_event_id, 1, type: :int64, json_name: "scheduledEventId"
  field :result, 2, type: Temporal.Api.Common.V1.Payload
  field :request_id, 3, type: :string, json_name: "requestId"
end

defmodule Temporal.Api.History.V1.NexusOperationFailedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :scheduled_event_id, 1, type: :int64, json_name: "scheduledEventId"
  field :failure, 2, type: Temporal.Api.Failure.V1.Failure
  field :request_id, 3, type: :string, json_name: "requestId"
end

defmodule Temporal.Api.History.V1.NexusOperationTimedOutEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :scheduled_event_id, 1, type: :int64, json_name: "scheduledEventId"
  field :failure, 2, type: Temporal.Api.Failure.V1.Failure
  field :request_id, 3, type: :string, json_name: "requestId"
end

defmodule Temporal.Api.History.V1.NexusOperationCanceledEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :scheduled_event_id, 1, type: :int64, json_name: "scheduledEventId"
  field :failure, 2, type: Temporal.Api.Failure.V1.Failure
  field :request_id, 3, type: :string, json_name: "requestId"
end

defmodule Temporal.Api.History.V1.NexusOperationCancelRequestedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :scheduled_event_id, 1, type: :int64, json_name: "scheduledEventId"

  field :workflow_task_completed_event_id, 2,
    type: :int64,
    json_name: "workflowTaskCompletedEventId"
end

defmodule Temporal.Api.History.V1.NexusOperationCancelRequestCompletedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :requested_event_id, 1, type: :int64, json_name: "requestedEventId"

  field :workflow_task_completed_event_id, 2,
    type: :int64,
    json_name: "workflowTaskCompletedEventId"

  field :scheduled_event_id, 3, type: :int64, json_name: "scheduledEventId"
end

defmodule Temporal.Api.History.V1.NexusOperationCancelRequestFailedEventAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :requested_event_id, 1, type: :int64, json_name: "requestedEventId"

  field :workflow_task_completed_event_id, 2,
    type: :int64,
    json_name: "workflowTaskCompletedEventId"

  field :failure, 3, type: Temporal.Api.Failure.V1.Failure
  field :scheduled_event_id, 4, type: :int64, json_name: "scheduledEventId"
end

defmodule Temporal.Api.History.V1.HistoryEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :attributes, 0

  field :event_id, 1, type: :int64, json_name: "eventId"
  field :event_time, 2, type: Google.Protobuf.Timestamp, json_name: "eventTime"
  field :event_type, 3, type: Temporal.Api.Enums.V1.EventType, json_name: "eventType", enum: true
  field :version, 4, type: :int64
  field :task_id, 5, type: :int64, json_name: "taskId"
  field :worker_may_ignore, 300, type: :bool, json_name: "workerMayIgnore"
  field :user_metadata, 301, type: Temporal.Api.Sdk.V1.UserMetadata, json_name: "userMetadata"
  field :links, 302, repeated: true, type: Temporal.Api.Common.V1.Link

  field :workflow_execution_started_event_attributes, 6,
    type: Temporal.Api.History.V1.WorkflowExecutionStartedEventAttributes,
    json_name: "workflowExecutionStartedEventAttributes",
    oneof: 0

  field :workflow_execution_completed_event_attributes, 7,
    type: Temporal.Api.History.V1.WorkflowExecutionCompletedEventAttributes,
    json_name: "workflowExecutionCompletedEventAttributes",
    oneof: 0

  field :workflow_execution_failed_event_attributes, 8,
    type: Temporal.Api.History.V1.WorkflowExecutionFailedEventAttributes,
    json_name: "workflowExecutionFailedEventAttributes",
    oneof: 0

  field :workflow_execution_timed_out_event_attributes, 9,
    type: Temporal.Api.History.V1.WorkflowExecutionTimedOutEventAttributes,
    json_name: "workflowExecutionTimedOutEventAttributes",
    oneof: 0

  field :workflow_task_scheduled_event_attributes, 10,
    type: Temporal.Api.History.V1.WorkflowTaskScheduledEventAttributes,
    json_name: "workflowTaskScheduledEventAttributes",
    oneof: 0

  field :workflow_task_started_event_attributes, 11,
    type: Temporal.Api.History.V1.WorkflowTaskStartedEventAttributes,
    json_name: "workflowTaskStartedEventAttributes",
    oneof: 0

  field :workflow_task_completed_event_attributes, 12,
    type: Temporal.Api.History.V1.WorkflowTaskCompletedEventAttributes,
    json_name: "workflowTaskCompletedEventAttributes",
    oneof: 0

  field :workflow_task_timed_out_event_attributes, 13,
    type: Temporal.Api.History.V1.WorkflowTaskTimedOutEventAttributes,
    json_name: "workflowTaskTimedOutEventAttributes",
    oneof: 0

  field :workflow_task_failed_event_attributes, 14,
    type: Temporal.Api.History.V1.WorkflowTaskFailedEventAttributes,
    json_name: "workflowTaskFailedEventAttributes",
    oneof: 0

  field :activity_task_scheduled_event_attributes, 15,
    type: Temporal.Api.History.V1.ActivityTaskScheduledEventAttributes,
    json_name: "activityTaskScheduledEventAttributes",
    oneof: 0

  field :activity_task_started_event_attributes, 16,
    type: Temporal.Api.History.V1.ActivityTaskStartedEventAttributes,
    json_name: "activityTaskStartedEventAttributes",
    oneof: 0

  field :activity_task_completed_event_attributes, 17,
    type: Temporal.Api.History.V1.ActivityTaskCompletedEventAttributes,
    json_name: "activityTaskCompletedEventAttributes",
    oneof: 0

  field :activity_task_failed_event_attributes, 18,
    type: Temporal.Api.History.V1.ActivityTaskFailedEventAttributes,
    json_name: "activityTaskFailedEventAttributes",
    oneof: 0

  field :activity_task_timed_out_event_attributes, 19,
    type: Temporal.Api.History.V1.ActivityTaskTimedOutEventAttributes,
    json_name: "activityTaskTimedOutEventAttributes",
    oneof: 0

  field :timer_started_event_attributes, 20,
    type: Temporal.Api.History.V1.TimerStartedEventAttributes,
    json_name: "timerStartedEventAttributes",
    oneof: 0

  field :timer_fired_event_attributes, 21,
    type: Temporal.Api.History.V1.TimerFiredEventAttributes,
    json_name: "timerFiredEventAttributes",
    oneof: 0

  field :activity_task_cancel_requested_event_attributes, 22,
    type: Temporal.Api.History.V1.ActivityTaskCancelRequestedEventAttributes,
    json_name: "activityTaskCancelRequestedEventAttributes",
    oneof: 0

  field :activity_task_canceled_event_attributes, 23,
    type: Temporal.Api.History.V1.ActivityTaskCanceledEventAttributes,
    json_name: "activityTaskCanceledEventAttributes",
    oneof: 0

  field :timer_canceled_event_attributes, 24,
    type: Temporal.Api.History.V1.TimerCanceledEventAttributes,
    json_name: "timerCanceledEventAttributes",
    oneof: 0

  field :marker_recorded_event_attributes, 25,
    type: Temporal.Api.History.V1.MarkerRecordedEventAttributes,
    json_name: "markerRecordedEventAttributes",
    oneof: 0

  field :workflow_execution_signaled_event_attributes, 26,
    type: Temporal.Api.History.V1.WorkflowExecutionSignaledEventAttributes,
    json_name: "workflowExecutionSignaledEventAttributes",
    oneof: 0

  field :workflow_execution_terminated_event_attributes, 27,
    type: Temporal.Api.History.V1.WorkflowExecutionTerminatedEventAttributes,
    json_name: "workflowExecutionTerminatedEventAttributes",
    oneof: 0

  field :workflow_execution_cancel_requested_event_attributes, 28,
    type: Temporal.Api.History.V1.WorkflowExecutionCancelRequestedEventAttributes,
    json_name: "workflowExecutionCancelRequestedEventAttributes",
    oneof: 0

  field :workflow_execution_canceled_event_attributes, 29,
    type: Temporal.Api.History.V1.WorkflowExecutionCanceledEventAttributes,
    json_name: "workflowExecutionCanceledEventAttributes",
    oneof: 0

  field :request_cancel_external_workflow_execution_initiated_event_attributes, 30,
    type: Temporal.Api.History.V1.RequestCancelExternalWorkflowExecutionInitiatedEventAttributes,
    json_name: "requestCancelExternalWorkflowExecutionInitiatedEventAttributes",
    oneof: 0

  field :request_cancel_external_workflow_execution_failed_event_attributes, 31,
    type: Temporal.Api.History.V1.RequestCancelExternalWorkflowExecutionFailedEventAttributes,
    json_name: "requestCancelExternalWorkflowExecutionFailedEventAttributes",
    oneof: 0

  field :external_workflow_execution_cancel_requested_event_attributes, 32,
    type: Temporal.Api.History.V1.ExternalWorkflowExecutionCancelRequestedEventAttributes,
    json_name: "externalWorkflowExecutionCancelRequestedEventAttributes",
    oneof: 0

  field :workflow_execution_continued_as_new_event_attributes, 33,
    type: Temporal.Api.History.V1.WorkflowExecutionContinuedAsNewEventAttributes,
    json_name: "workflowExecutionContinuedAsNewEventAttributes",
    oneof: 0

  field :start_child_workflow_execution_initiated_event_attributes, 34,
    type: Temporal.Api.History.V1.StartChildWorkflowExecutionInitiatedEventAttributes,
    json_name: "startChildWorkflowExecutionInitiatedEventAttributes",
    oneof: 0

  field :start_child_workflow_execution_failed_event_attributes, 35,
    type: Temporal.Api.History.V1.StartChildWorkflowExecutionFailedEventAttributes,
    json_name: "startChildWorkflowExecutionFailedEventAttributes",
    oneof: 0

  field :child_workflow_execution_started_event_attributes, 36,
    type: Temporal.Api.History.V1.ChildWorkflowExecutionStartedEventAttributes,
    json_name: "childWorkflowExecutionStartedEventAttributes",
    oneof: 0

  field :child_workflow_execution_completed_event_attributes, 37,
    type: Temporal.Api.History.V1.ChildWorkflowExecutionCompletedEventAttributes,
    json_name: "childWorkflowExecutionCompletedEventAttributes",
    oneof: 0

  field :child_workflow_execution_failed_event_attributes, 38,
    type: Temporal.Api.History.V1.ChildWorkflowExecutionFailedEventAttributes,
    json_name: "childWorkflowExecutionFailedEventAttributes",
    oneof: 0

  field :child_workflow_execution_canceled_event_attributes, 39,
    type: Temporal.Api.History.V1.ChildWorkflowExecutionCanceledEventAttributes,
    json_name: "childWorkflowExecutionCanceledEventAttributes",
    oneof: 0

  field :child_workflow_execution_timed_out_event_attributes, 40,
    type: Temporal.Api.History.V1.ChildWorkflowExecutionTimedOutEventAttributes,
    json_name: "childWorkflowExecutionTimedOutEventAttributes",
    oneof: 0

  field :child_workflow_execution_terminated_event_attributes, 41,
    type: Temporal.Api.History.V1.ChildWorkflowExecutionTerminatedEventAttributes,
    json_name: "childWorkflowExecutionTerminatedEventAttributes",
    oneof: 0

  field :signal_external_workflow_execution_initiated_event_attributes, 42,
    type: Temporal.Api.History.V1.SignalExternalWorkflowExecutionInitiatedEventAttributes,
    json_name: "signalExternalWorkflowExecutionInitiatedEventAttributes",
    oneof: 0

  field :signal_external_workflow_execution_failed_event_attributes, 43,
    type: Temporal.Api.History.V1.SignalExternalWorkflowExecutionFailedEventAttributes,
    json_name: "signalExternalWorkflowExecutionFailedEventAttributes",
    oneof: 0

  field :external_workflow_execution_signaled_event_attributes, 44,
    type: Temporal.Api.History.V1.ExternalWorkflowExecutionSignaledEventAttributes,
    json_name: "externalWorkflowExecutionSignaledEventAttributes",
    oneof: 0

  field :upsert_workflow_search_attributes_event_attributes, 45,
    type: Temporal.Api.History.V1.UpsertWorkflowSearchAttributesEventAttributes,
    json_name: "upsertWorkflowSearchAttributesEventAttributes",
    oneof: 0

  field :workflow_execution_update_accepted_event_attributes, 46,
    type: Temporal.Api.History.V1.WorkflowExecutionUpdateAcceptedEventAttributes,
    json_name: "workflowExecutionUpdateAcceptedEventAttributes",
    oneof: 0

  field :workflow_execution_update_rejected_event_attributes, 47,
    type: Temporal.Api.History.V1.WorkflowExecutionUpdateRejectedEventAttributes,
    json_name: "workflowExecutionUpdateRejectedEventAttributes",
    oneof: 0

  field :workflow_execution_update_completed_event_attributes, 48,
    type: Temporal.Api.History.V1.WorkflowExecutionUpdateCompletedEventAttributes,
    json_name: "workflowExecutionUpdateCompletedEventAttributes",
    oneof: 0

  field :workflow_properties_modified_externally_event_attributes, 49,
    type: Temporal.Api.History.V1.WorkflowPropertiesModifiedExternallyEventAttributes,
    json_name: "workflowPropertiesModifiedExternallyEventAttributes",
    oneof: 0

  field :activity_properties_modified_externally_event_attributes, 50,
    type: Temporal.Api.History.V1.ActivityPropertiesModifiedExternallyEventAttributes,
    json_name: "activityPropertiesModifiedExternallyEventAttributes",
    oneof: 0

  field :workflow_properties_modified_event_attributes, 51,
    type: Temporal.Api.History.V1.WorkflowPropertiesModifiedEventAttributes,
    json_name: "workflowPropertiesModifiedEventAttributes",
    oneof: 0

  field :workflow_execution_update_admitted_event_attributes, 52,
    type: Temporal.Api.History.V1.WorkflowExecutionUpdateAdmittedEventAttributes,
    json_name: "workflowExecutionUpdateAdmittedEventAttributes",
    oneof: 0

  field :nexus_operation_scheduled_event_attributes, 53,
    type: Temporal.Api.History.V1.NexusOperationScheduledEventAttributes,
    json_name: "nexusOperationScheduledEventAttributes",
    oneof: 0

  field :nexus_operation_started_event_attributes, 54,
    type: Temporal.Api.History.V1.NexusOperationStartedEventAttributes,
    json_name: "nexusOperationStartedEventAttributes",
    oneof: 0

  field :nexus_operation_completed_event_attributes, 55,
    type: Temporal.Api.History.V1.NexusOperationCompletedEventAttributes,
    json_name: "nexusOperationCompletedEventAttributes",
    oneof: 0

  field :nexus_operation_failed_event_attributes, 56,
    type: Temporal.Api.History.V1.NexusOperationFailedEventAttributes,
    json_name: "nexusOperationFailedEventAttributes",
    oneof: 0

  field :nexus_operation_canceled_event_attributes, 57,
    type: Temporal.Api.History.V1.NexusOperationCanceledEventAttributes,
    json_name: "nexusOperationCanceledEventAttributes",
    oneof: 0

  field :nexus_operation_timed_out_event_attributes, 58,
    type: Temporal.Api.History.V1.NexusOperationTimedOutEventAttributes,
    json_name: "nexusOperationTimedOutEventAttributes",
    oneof: 0

  field :nexus_operation_cancel_requested_event_attributes, 59,
    type: Temporal.Api.History.V1.NexusOperationCancelRequestedEventAttributes,
    json_name: "nexusOperationCancelRequestedEventAttributes",
    oneof: 0

  field :workflow_execution_options_updated_event_attributes, 60,
    type: Temporal.Api.History.V1.WorkflowExecutionOptionsUpdatedEventAttributes,
    json_name: "workflowExecutionOptionsUpdatedEventAttributes",
    oneof: 0

  field :nexus_operation_cancel_request_completed_event_attributes, 61,
    type: Temporal.Api.History.V1.NexusOperationCancelRequestCompletedEventAttributes,
    json_name: "nexusOperationCancelRequestCompletedEventAttributes",
    oneof: 0

  field :nexus_operation_cancel_request_failed_event_attributes, 62,
    type: Temporal.Api.History.V1.NexusOperationCancelRequestFailedEventAttributes,
    json_name: "nexusOperationCancelRequestFailedEventAttributes",
    oneof: 0
end

defmodule Temporal.Api.History.V1.History do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :events, 1, repeated: true, type: Temporal.Api.History.V1.HistoryEvent
end
