defmodule Temporal.Api.Workflow.V1.WorkflowExecutionInfo do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :execution, 1, type: Temporal.Api.Common.V1.WorkflowExecution
  field :type, 2, type: Temporal.Api.Common.V1.WorkflowType
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :close_time, 4, type: Google.Protobuf.Timestamp, json_name: "closeTime"
  field :status, 5, type: Temporal.Api.Enums.V1.WorkflowExecutionStatus, enum: true
  field :history_length, 6, type: :int64, json_name: "historyLength"
  field :parent_namespace_id, 7, type: :string, json_name: "parentNamespaceId"

  field :parent_execution, 8,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "parentExecution"

  field :execution_time, 9, type: Google.Protobuf.Timestamp, json_name: "executionTime"
  field :memo, 10, type: Temporal.Api.Common.V1.Memo

  field :search_attributes, 11,
    type: Temporal.Api.Common.V1.SearchAttributes,
    json_name: "searchAttributes"

  field :auto_reset_points, 12,
    type: Temporal.Api.Workflow.V1.ResetPoints,
    json_name: "autoResetPoints"

  field :task_queue, 13, type: :string, json_name: "taskQueue"
  field :state_transition_count, 14, type: :int64, json_name: "stateTransitionCount"
  field :history_size_bytes, 15, type: :int64, json_name: "historySizeBytes"

  field :most_recent_worker_version_stamp, 16,
    type: Temporal.Api.Common.V1.WorkerVersionStamp,
    json_name: "mostRecentWorkerVersionStamp"

  field :execution_duration, 17, type: Google.Protobuf.Duration, json_name: "executionDuration"

  field :root_execution, 18,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "rootExecution"

  field :assigned_build_id, 19, type: :string, json_name: "assignedBuildId"
  field :inherited_build_id, 20, type: :string, json_name: "inheritedBuildId"
  field :first_run_id, 21, type: :string, json_name: "firstRunId"

  field :versioning_info, 22,
    type: Temporal.Api.Workflow.V1.WorkflowExecutionVersioningInfo,
    json_name: "versioningInfo"
end

defmodule Temporal.Api.Workflow.V1.WorkflowExecutionVersioningInfo do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :behavior, 1, type: Temporal.Api.Enums.V1.VersioningBehavior, enum: true
  field :deployment, 2, type: Temporal.Api.Deployment.V1.Deployment

  field :versioning_override, 3,
    type: Temporal.Api.Workflow.V1.VersioningOverride,
    json_name: "versioningOverride"

  field :deployment_transition, 4,
    type: Temporal.Api.Workflow.V1.DeploymentTransition,
    json_name: "deploymentTransition"
end

defmodule Temporal.Api.Workflow.V1.DeploymentTransition do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :deployment, 1, type: Temporal.Api.Deployment.V1.Deployment
end

defmodule Temporal.Api.Workflow.V1.WorkflowExecutionConfig do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :task_queue, 1, type: Temporal.Api.Taskqueue.V1.TaskQueue, json_name: "taskQueue"

  field :workflow_execution_timeout, 2,
    type: Google.Protobuf.Duration,
    json_name: "workflowExecutionTimeout"

  field :workflow_run_timeout, 3, type: Google.Protobuf.Duration, json_name: "workflowRunTimeout"

  field :default_workflow_task_timeout, 4,
    type: Google.Protobuf.Duration,
    json_name: "defaultWorkflowTaskTimeout"

  field :user_metadata, 5, type: Temporal.Api.Sdk.V1.UserMetadata, json_name: "userMetadata"
end

defmodule Temporal.Api.Workflow.V1.PendingActivityInfo do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  oneof :assigned_build_id, 0

  field :activity_id, 1, type: :string, json_name: "activityId"
  field :activity_type, 2, type: Temporal.Api.Common.V1.ActivityType, json_name: "activityType"
  field :state, 3, type: Temporal.Api.Enums.V1.PendingActivityState, enum: true

  field :heartbeat_details, 4,
    type: Temporal.Api.Common.V1.Payloads,
    json_name: "heartbeatDetails"

  field :last_heartbeat_time, 5, type: Google.Protobuf.Timestamp, json_name: "lastHeartbeatTime"
  field :last_started_time, 6, type: Google.Protobuf.Timestamp, json_name: "lastStartedTime"
  field :attempt, 7, type: :int32
  field :maximum_attempts, 8, type: :int32, json_name: "maximumAttempts"
  field :scheduled_time, 9, type: Google.Protobuf.Timestamp, json_name: "scheduledTime"
  field :expiration_time, 10, type: Google.Protobuf.Timestamp, json_name: "expirationTime"
  field :last_failure, 11, type: Temporal.Api.Failure.V1.Failure, json_name: "lastFailure"
  field :last_worker_identity, 12, type: :string, json_name: "lastWorkerIdentity"

  field :use_workflow_build_id, 13,
    type: Google.Protobuf.Empty,
    json_name: "useWorkflowBuildId",
    oneof: 0

  field :last_independently_assigned_build_id, 14,
    type: :string,
    json_name: "lastIndependentlyAssignedBuildId",
    oneof: 0

  field :last_worker_version_stamp, 15,
    type: Temporal.Api.Common.V1.WorkerVersionStamp,
    json_name: "lastWorkerVersionStamp"

  field :current_retry_interval, 16,
    type: Google.Protobuf.Duration,
    json_name: "currentRetryInterval"

  field :last_attempt_complete_time, 17,
    type: Google.Protobuf.Timestamp,
    json_name: "lastAttemptCompleteTime"

  field :next_attempt_schedule_time, 18,
    type: Google.Protobuf.Timestamp,
    json_name: "nextAttemptScheduleTime"

  field :paused, 19, type: :bool

  field :last_deployment, 20,
    type: Temporal.Api.Deployment.V1.Deployment,
    json_name: "lastDeployment"
end

defmodule Temporal.Api.Workflow.V1.PendingChildExecutionInfo do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :workflow_id, 1, type: :string, json_name: "workflowId"
  field :run_id, 2, type: :string, json_name: "runId"
  field :workflow_type_name, 3, type: :string, json_name: "workflowTypeName"
  field :initiated_id, 4, type: :int64, json_name: "initiatedId"

  field :parent_close_policy, 5,
    type: Temporal.Api.Enums.V1.ParentClosePolicy,
    json_name: "parentClosePolicy",
    enum: true
end

defmodule Temporal.Api.Workflow.V1.PendingWorkflowTaskInfo do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :state, 1, type: Temporal.Api.Enums.V1.PendingWorkflowTaskState, enum: true
  field :scheduled_time, 2, type: Google.Protobuf.Timestamp, json_name: "scheduledTime"

  field :original_scheduled_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "originalScheduledTime"

  field :started_time, 4, type: Google.Protobuf.Timestamp, json_name: "startedTime"
  field :attempt, 5, type: :int32
end

defmodule Temporal.Api.Workflow.V1.ResetPoints do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :points, 1, repeated: true, type: Temporal.Api.Workflow.V1.ResetPointInfo
end

defmodule Temporal.Api.Workflow.V1.ResetPointInfo do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :build_id, 7, type: :string, json_name: "buildId"
  field :binary_checksum, 1, type: :string, json_name: "binaryChecksum"
  field :run_id, 2, type: :string, json_name: "runId"

  field :first_workflow_task_completed_id, 3,
    type: :int64,
    json_name: "firstWorkflowTaskCompletedId"

  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :expire_time, 5, type: Google.Protobuf.Timestamp, json_name: "expireTime"
  field :resettable, 6, type: :bool
end

defmodule Temporal.Api.Workflow.V1.NewWorkflowExecutionInfo do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :workflow_id, 1, type: :string, json_name: "workflowId"
  field :workflow_type, 2, type: Temporal.Api.Common.V1.WorkflowType, json_name: "workflowType"
  field :task_queue, 3, type: Temporal.Api.Taskqueue.V1.TaskQueue, json_name: "taskQueue"
  field :input, 4, type: Temporal.Api.Common.V1.Payloads

  field :workflow_execution_timeout, 5,
    type: Google.Protobuf.Duration,
    json_name: "workflowExecutionTimeout"

  field :workflow_run_timeout, 6, type: Google.Protobuf.Duration, json_name: "workflowRunTimeout"

  field :workflow_task_timeout, 7,
    type: Google.Protobuf.Duration,
    json_name: "workflowTaskTimeout"

  field :workflow_id_reuse_policy, 8,
    type: Temporal.Api.Enums.V1.WorkflowIdReusePolicy,
    json_name: "workflowIdReusePolicy",
    enum: true

  field :retry_policy, 9, type: Temporal.Api.Common.V1.RetryPolicy, json_name: "retryPolicy"
  field :cron_schedule, 10, type: :string, json_name: "cronSchedule"
  field :memo, 11, type: Temporal.Api.Common.V1.Memo

  field :search_attributes, 12,
    type: Temporal.Api.Common.V1.SearchAttributes,
    json_name: "searchAttributes"

  field :header, 13, type: Temporal.Api.Common.V1.Header
  field :user_metadata, 14, type: Temporal.Api.Sdk.V1.UserMetadata, json_name: "userMetadata"

  field :versioning_override, 15,
    type: Temporal.Api.Workflow.V1.VersioningOverride,
    json_name: "versioningOverride"
end

defmodule Temporal.Api.Workflow.V1.CallbackInfo.WorkflowClosed do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"
end

defmodule Temporal.Api.Workflow.V1.CallbackInfo.Trigger do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  oneof :variant, 0

  field :workflow_closed, 1,
    type: Temporal.Api.Workflow.V1.CallbackInfo.WorkflowClosed,
    json_name: "workflowClosed",
    oneof: 0
end

defmodule Temporal.Api.Workflow.V1.CallbackInfo do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :callback, 1, type: Temporal.Api.Common.V1.Callback
  field :trigger, 2, type: Temporal.Api.Workflow.V1.CallbackInfo.Trigger
  field :registration_time, 3, type: Google.Protobuf.Timestamp, json_name: "registrationTime"
  field :state, 4, type: Temporal.Api.Enums.V1.CallbackState, enum: true
  field :attempt, 5, type: :int32

  field :last_attempt_complete_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "lastAttemptCompleteTime"

  field :last_attempt_failure, 7,
    type: Temporal.Api.Failure.V1.Failure,
    json_name: "lastAttemptFailure"

  field :next_attempt_schedule_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "nextAttemptScheduleTime"

  field :blocked_reason, 9, type: :string, json_name: "blockedReason"
end

defmodule Temporal.Api.Workflow.V1.PendingNexusOperationInfo do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :endpoint, 1, type: :string
  field :service, 2, type: :string
  field :operation, 3, type: :string
  field :operation_id, 4, type: :string, json_name: "operationId"

  field :schedule_to_close_timeout, 5,
    type: Google.Protobuf.Duration,
    json_name: "scheduleToCloseTimeout"

  field :scheduled_time, 6, type: Google.Protobuf.Timestamp, json_name: "scheduledTime"
  field :state, 7, type: Temporal.Api.Enums.V1.PendingNexusOperationState, enum: true
  field :attempt, 8, type: :int32

  field :last_attempt_complete_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "lastAttemptCompleteTime"

  field :last_attempt_failure, 10,
    type: Temporal.Api.Failure.V1.Failure,
    json_name: "lastAttemptFailure"

  field :next_attempt_schedule_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "nextAttemptScheduleTime"

  field :cancellation_info, 12,
    type: Temporal.Api.Workflow.V1.NexusOperationCancellationInfo,
    json_name: "cancellationInfo"

  field :scheduled_event_id, 13, type: :int64, json_name: "scheduledEventId"
  field :blocked_reason, 14, type: :string, json_name: "blockedReason"
end

defmodule Temporal.Api.Workflow.V1.NexusOperationCancellationInfo do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :requested_time, 1, type: Google.Protobuf.Timestamp, json_name: "requestedTime"
  field :state, 2, type: Temporal.Api.Enums.V1.NexusOperationCancellationState, enum: true
  field :attempt, 3, type: :int32

  field :last_attempt_complete_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "lastAttemptCompleteTime"

  field :last_attempt_failure, 5,
    type: Temporal.Api.Failure.V1.Failure,
    json_name: "lastAttemptFailure"

  field :next_attempt_schedule_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "nextAttemptScheduleTime"

  field :blocked_reason, 7, type: :string, json_name: "blockedReason"
end

defmodule Temporal.Api.Workflow.V1.WorkflowExecutionOptions do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :versioning_override, 1,
    type: Temporal.Api.Workflow.V1.VersioningOverride,
    json_name: "versioningOverride"
end

defmodule Temporal.Api.Workflow.V1.VersioningOverride do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :behavior, 1, type: Temporal.Api.Enums.V1.VersioningBehavior, enum: true
  field :deployment, 2, type: Temporal.Api.Deployment.V1.Deployment
end