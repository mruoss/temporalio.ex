defmodule Temporal.Api.Workflowservice.V1.RegisterNamespaceRequest.DataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Temporal.Api.Workflowservice.V1.RegisterNamespaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :description, 2, type: :string
  field :owner_email, 3, type: :string, json_name: "ownerEmail"

  field :workflow_execution_retention_period, 4,
    type: Google.Protobuf.Duration,
    json_name: "workflowExecutionRetentionPeriod",
    deprecated: false

  field :clusters, 5, repeated: true, type: Temporal.Api.Replication.V1.ClusterReplicationConfig
  field :active_cluster_name, 6, type: :string, json_name: "activeClusterName"

  field :data, 7,
    repeated: true,
    type: Temporal.Api.Workflowservice.V1.RegisterNamespaceRequest.DataEntry,
    map: true

  field :security_token, 8, type: :string, json_name: "securityToken"
  field :is_global_namespace, 9, type: :bool, json_name: "isGlobalNamespace"

  field :history_archival_state, 10,
    type: Temporal.Api.Enums.V1.ArchivalState,
    json_name: "historyArchivalState",
    enum: true

  field :history_archival_uri, 11, type: :string, json_name: "historyArchivalUri"

  field :visibility_archival_state, 12,
    type: Temporal.Api.Enums.V1.ArchivalState,
    json_name: "visibilityArchivalState",
    enum: true

  field :visibility_archival_uri, 13, type: :string, json_name: "visibilityArchivalUri"
end

defmodule Temporal.Api.Workflowservice.V1.RegisterNamespaceResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Temporal.Api.Workflowservice.V1.ListNamespacesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :next_page_token, 2, type: :bytes, json_name: "nextPageToken"

  field :namespace_filter, 3,
    type: Temporal.Api.Namespace.V1.NamespaceFilter,
    json_name: "namespaceFilter"
end

defmodule Temporal.Api.Workflowservice.V1.ListNamespacesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespaces, 1,
    repeated: true,
    type: Temporal.Api.Workflowservice.V1.DescribeNamespaceResponse

  field :next_page_token, 2, type: :bytes, json_name: "nextPageToken"
end

defmodule Temporal.Api.Workflowservice.V1.DescribeNamespaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :id, 2, type: :string
end

defmodule Temporal.Api.Workflowservice.V1.DescribeNamespaceResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace_info, 1,
    type: Temporal.Api.Namespace.V1.NamespaceInfo,
    json_name: "namespaceInfo"

  field :config, 2, type: Temporal.Api.Namespace.V1.NamespaceConfig

  field :replication_config, 3,
    type: Temporal.Api.Replication.V1.NamespaceReplicationConfig,
    json_name: "replicationConfig"

  field :failover_version, 4, type: :int64, json_name: "failoverVersion"
  field :is_global_namespace, 5, type: :bool, json_name: "isGlobalNamespace"

  field :failover_history, 6,
    repeated: true,
    type: Temporal.Api.Replication.V1.FailoverStatus,
    json_name: "failoverHistory"
end

defmodule Temporal.Api.Workflowservice.V1.UpdateNamespaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string

  field :update_info, 2,
    type: Temporal.Api.Namespace.V1.UpdateNamespaceInfo,
    json_name: "updateInfo"

  field :config, 3, type: Temporal.Api.Namespace.V1.NamespaceConfig

  field :replication_config, 4,
    type: Temporal.Api.Replication.V1.NamespaceReplicationConfig,
    json_name: "replicationConfig"

  field :security_token, 5, type: :string, json_name: "securityToken"
  field :delete_bad_binary, 6, type: :string, json_name: "deleteBadBinary"
  field :promote_namespace, 7, type: :bool, json_name: "promoteNamespace"
end

defmodule Temporal.Api.Workflowservice.V1.UpdateNamespaceResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace_info, 1,
    type: Temporal.Api.Namespace.V1.NamespaceInfo,
    json_name: "namespaceInfo"

  field :config, 2, type: Temporal.Api.Namespace.V1.NamespaceConfig

  field :replication_config, 3,
    type: Temporal.Api.Replication.V1.NamespaceReplicationConfig,
    json_name: "replicationConfig"

  field :failover_version, 4, type: :int64, json_name: "failoverVersion"
  field :is_global_namespace, 5, type: :bool, json_name: "isGlobalNamespace"
end

defmodule Temporal.Api.Workflowservice.V1.DeprecateNamespaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :security_token, 2, type: :string, json_name: "securityToken"
end

defmodule Temporal.Api.Workflowservice.V1.DeprecateNamespaceResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Temporal.Api.Workflowservice.V1.StartWorkflowExecutionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :workflow_id, 2, type: :string, json_name: "workflowId"
  field :workflow_type, 3, type: Temporal.Api.Common.V1.WorkflowType, json_name: "workflowType"
  field :task_queue, 4, type: Temporal.Api.Taskqueue.V1.TaskQueue, json_name: "taskQueue"
  field :input, 5, type: Temporal.Api.Common.V1.Payloads

  field :workflow_execution_timeout, 6,
    type: Google.Protobuf.Duration,
    json_name: "workflowExecutionTimeout",
    deprecated: false

  field :workflow_run_timeout, 7,
    type: Google.Protobuf.Duration,
    json_name: "workflowRunTimeout",
    deprecated: false

  field :workflow_task_timeout, 8,
    type: Google.Protobuf.Duration,
    json_name: "workflowTaskTimeout",
    deprecated: false

  field :identity, 9, type: :string
  field :request_id, 10, type: :string, json_name: "requestId"

  field :workflow_id_reuse_policy, 11,
    type: Temporal.Api.Enums.V1.WorkflowIdReusePolicy,
    json_name: "workflowIdReusePolicy",
    enum: true

  field :retry_policy, 12, type: Temporal.Api.Common.V1.RetryPolicy, json_name: "retryPolicy"
  field :cron_schedule, 13, type: :string, json_name: "cronSchedule"
  field :memo, 14, type: Temporal.Api.Common.V1.Memo

  field :search_attributes, 15,
    type: Temporal.Api.Common.V1.SearchAttributes,
    json_name: "searchAttributes"

  field :header, 16, type: Temporal.Api.Common.V1.Header
  field :request_eager_execution, 17, type: :bool, json_name: "requestEagerExecution"

  field :continued_failure, 18,
    type: Temporal.Api.Failure.V1.Failure,
    json_name: "continuedFailure"

  field :last_completion_result, 19,
    type: Temporal.Api.Common.V1.Payloads,
    json_name: "lastCompletionResult"
end

defmodule Temporal.Api.Workflowservice.V1.StartWorkflowExecutionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :run_id, 1, type: :string, json_name: "runId"

  field :eager_workflow_task, 2,
    type: Temporal.Api.Workflowservice.V1.PollWorkflowTaskQueueResponse,
    json_name: "eagerWorkflowTask"
end

defmodule Temporal.Api.Workflowservice.V1.GetWorkflowExecutionHistoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :execution, 2, type: Temporal.Api.Common.V1.WorkflowExecution
  field :maximum_page_size, 3, type: :int32, json_name: "maximumPageSize"
  field :next_page_token, 4, type: :bytes, json_name: "nextPageToken"
  field :wait_new_event, 5, type: :bool, json_name: "waitNewEvent"

  field :history_event_filter_type, 6,
    type: Temporal.Api.Enums.V1.HistoryEventFilterType,
    json_name: "historyEventFilterType",
    enum: true

  field :skip_archival, 7, type: :bool, json_name: "skipArchival"
end

defmodule Temporal.Api.Workflowservice.V1.GetWorkflowExecutionHistoryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :history, 1, type: Temporal.Api.History.V1.History

  field :raw_history, 2,
    repeated: true,
    type: Temporal.Api.Common.V1.DataBlob,
    json_name: "rawHistory"

  field :next_page_token, 3, type: :bytes, json_name: "nextPageToken"
  field :archived, 4, type: :bool
end

defmodule Temporal.Api.Workflowservice.V1.GetWorkflowExecutionHistoryReverseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :execution, 2, type: Temporal.Api.Common.V1.WorkflowExecution
  field :maximum_page_size, 3, type: :int32, json_name: "maximumPageSize"
  field :next_page_token, 4, type: :bytes, json_name: "nextPageToken"
end

defmodule Temporal.Api.Workflowservice.V1.GetWorkflowExecutionHistoryReverseResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :history, 1, type: Temporal.Api.History.V1.History
  field :next_page_token, 3, type: :bytes, json_name: "nextPageToken"
end

defmodule Temporal.Api.Workflowservice.V1.PollWorkflowTaskQueueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :task_queue, 2, type: Temporal.Api.Taskqueue.V1.TaskQueue, json_name: "taskQueue"
  field :identity, 3, type: :string
  field :binary_checksum, 4, type: :string, json_name: "binaryChecksum"

  field :worker_version_capabilities, 5,
    type: Temporal.Api.Common.V1.WorkerVersionCapabilities,
    json_name: "workerVersionCapabilities"
end

defmodule Temporal.Api.Workflowservice.V1.PollWorkflowTaskQueueResponse.QueriesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Temporal.Api.Query.V1.WorkflowQuery
end

defmodule Temporal.Api.Workflowservice.V1.PollWorkflowTaskQueueResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :task_token, 1, type: :bytes, json_name: "taskToken"

  field :workflow_execution, 2,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "workflowExecution"

  field :workflow_type, 3, type: Temporal.Api.Common.V1.WorkflowType, json_name: "workflowType"
  field :previous_started_event_id, 4, type: :int64, json_name: "previousStartedEventId"
  field :started_event_id, 5, type: :int64, json_name: "startedEventId"
  field :attempt, 6, type: :int32
  field :backlog_count_hint, 7, type: :int64, json_name: "backlogCountHint"
  field :history, 8, type: Temporal.Api.History.V1.History
  field :next_page_token, 9, type: :bytes, json_name: "nextPageToken"
  field :query, 10, type: Temporal.Api.Query.V1.WorkflowQuery

  field :workflow_execution_task_queue, 11,
    type: Temporal.Api.Taskqueue.V1.TaskQueue,
    json_name: "workflowExecutionTaskQueue"

  field :scheduled_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "scheduledTime",
    deprecated: false

  field :started_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "startedTime",
    deprecated: false

  field :queries, 14,
    repeated: true,
    type: Temporal.Api.Workflowservice.V1.PollWorkflowTaskQueueResponse.QueriesEntry,
    map: true

  field :messages, 15, repeated: true, type: Temporal.Api.Protocol.V1.Message
end

defmodule Temporal.Api.Workflowservice.V1.RespondWorkflowTaskCompletedRequest.QueryResultsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Temporal.Api.Query.V1.WorkflowQueryResult
end

defmodule Temporal.Api.Workflowservice.V1.RespondWorkflowTaskCompletedRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :task_token, 1, type: :bytes, json_name: "taskToken"
  field :commands, 2, repeated: true, type: Temporal.Api.Command.V1.Command
  field :identity, 3, type: :string

  field :sticky_attributes, 4,
    type: Temporal.Api.Taskqueue.V1.StickyExecutionAttributes,
    json_name: "stickyAttributes"

  field :return_new_workflow_task, 5, type: :bool, json_name: "returnNewWorkflowTask"
  field :force_create_new_workflow_task, 6, type: :bool, json_name: "forceCreateNewWorkflowTask"
  field :binary_checksum, 7, type: :string, json_name: "binaryChecksum"

  field :query_results, 8,
    repeated: true,
    type: Temporal.Api.Workflowservice.V1.RespondWorkflowTaskCompletedRequest.QueryResultsEntry,
    json_name: "queryResults",
    map: true

  field :namespace, 9, type: :string

  field :worker_version_stamp, 10,
    type: Temporal.Api.Common.V1.WorkerVersionStamp,
    json_name: "workerVersionStamp"

  field :messages, 11, repeated: true, type: Temporal.Api.Protocol.V1.Message

  field :sdk_metadata, 12,
    type: Temporal.Api.Sdk.V1.WorkflowTaskCompletedMetadata,
    json_name: "sdkMetadata"

  field :metering_metadata, 13,
    type: Temporal.Api.Common.V1.MeteringMetadata,
    json_name: "meteringMetadata"
end

defmodule Temporal.Api.Workflowservice.V1.RespondWorkflowTaskCompletedResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :workflow_task, 1,
    type: Temporal.Api.Workflowservice.V1.PollWorkflowTaskQueueResponse,
    json_name: "workflowTask"

  field :activity_tasks, 2,
    repeated: true,
    type: Temporal.Api.Workflowservice.V1.PollActivityTaskQueueResponse,
    json_name: "activityTasks"

  field :reset_history_event_id, 3, type: :int64, json_name: "resetHistoryEventId"
end

defmodule Temporal.Api.Workflowservice.V1.RespondWorkflowTaskFailedRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :task_token, 1, type: :bytes, json_name: "taskToken"
  field :cause, 2, type: Temporal.Api.Enums.V1.WorkflowTaskFailedCause, enum: true
  field :failure, 3, type: Temporal.Api.Failure.V1.Failure
  field :identity, 4, type: :string
  field :binary_checksum, 5, type: :string, json_name: "binaryChecksum"
  field :namespace, 6, type: :string
  field :messages, 7, repeated: true, type: Temporal.Api.Protocol.V1.Message
end

defmodule Temporal.Api.Workflowservice.V1.RespondWorkflowTaskFailedResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Temporal.Api.Workflowservice.V1.PollActivityTaskQueueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :task_queue, 2, type: Temporal.Api.Taskqueue.V1.TaskQueue, json_name: "taskQueue"
  field :identity, 3, type: :string

  field :task_queue_metadata, 4,
    type: Temporal.Api.Taskqueue.V1.TaskQueueMetadata,
    json_name: "taskQueueMetadata"

  field :worker_version_capabilities, 5,
    type: Temporal.Api.Common.V1.WorkerVersionCapabilities,
    json_name: "workerVersionCapabilities"
end

defmodule Temporal.Api.Workflowservice.V1.PollActivityTaskQueueResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :task_token, 1, type: :bytes, json_name: "taskToken"
  field :workflow_namespace, 2, type: :string, json_name: "workflowNamespace"
  field :workflow_type, 3, type: Temporal.Api.Common.V1.WorkflowType, json_name: "workflowType"

  field :workflow_execution, 4,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "workflowExecution"

  field :activity_type, 5, type: Temporal.Api.Common.V1.ActivityType, json_name: "activityType"
  field :activity_id, 6, type: :string, json_name: "activityId"
  field :header, 7, type: Temporal.Api.Common.V1.Header
  field :input, 8, type: Temporal.Api.Common.V1.Payloads

  field :heartbeat_details, 9,
    type: Temporal.Api.Common.V1.Payloads,
    json_name: "heartbeatDetails"

  field :scheduled_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "scheduledTime",
    deprecated: false

  field :current_attempt_scheduled_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "currentAttemptScheduledTime",
    deprecated: false

  field :started_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "startedTime",
    deprecated: false

  field :attempt, 13, type: :int32

  field :schedule_to_close_timeout, 14,
    type: Google.Protobuf.Duration,
    json_name: "scheduleToCloseTimeout",
    deprecated: false

  field :start_to_close_timeout, 15,
    type: Google.Protobuf.Duration,
    json_name: "startToCloseTimeout",
    deprecated: false

  field :heartbeat_timeout, 16,
    type: Google.Protobuf.Duration,
    json_name: "heartbeatTimeout",
    deprecated: false

  field :retry_policy, 17, type: Temporal.Api.Common.V1.RetryPolicy, json_name: "retryPolicy"
end

defmodule Temporal.Api.Workflowservice.V1.RecordActivityTaskHeartbeatRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :task_token, 1, type: :bytes, json_name: "taskToken"
  field :details, 2, type: Temporal.Api.Common.V1.Payloads
  field :identity, 3, type: :string
  field :namespace, 4, type: :string
end

defmodule Temporal.Api.Workflowservice.V1.RecordActivityTaskHeartbeatResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cancel_requested, 1, type: :bool, json_name: "cancelRequested"
end

defmodule Temporal.Api.Workflowservice.V1.RecordActivityTaskHeartbeatByIdRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :workflow_id, 2, type: :string, json_name: "workflowId"
  field :run_id, 3, type: :string, json_name: "runId"
  field :activity_id, 4, type: :string, json_name: "activityId"
  field :details, 5, type: Temporal.Api.Common.V1.Payloads
  field :identity, 6, type: :string
end

defmodule Temporal.Api.Workflowservice.V1.RecordActivityTaskHeartbeatByIdResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cancel_requested, 1, type: :bool, json_name: "cancelRequested"
end

defmodule Temporal.Api.Workflowservice.V1.RespondActivityTaskCompletedRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :task_token, 1, type: :bytes, json_name: "taskToken"
  field :result, 2, type: Temporal.Api.Common.V1.Payloads
  field :identity, 3, type: :string
  field :namespace, 4, type: :string
end

defmodule Temporal.Api.Workflowservice.V1.RespondActivityTaskCompletedResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Temporal.Api.Workflowservice.V1.RespondActivityTaskCompletedByIdRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :workflow_id, 2, type: :string, json_name: "workflowId"
  field :run_id, 3, type: :string, json_name: "runId"
  field :activity_id, 4, type: :string, json_name: "activityId"
  field :result, 5, type: Temporal.Api.Common.V1.Payloads
  field :identity, 6, type: :string
end

defmodule Temporal.Api.Workflowservice.V1.RespondActivityTaskCompletedByIdResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Temporal.Api.Workflowservice.V1.RespondActivityTaskFailedRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :task_token, 1, type: :bytes, json_name: "taskToken"
  field :failure, 2, type: Temporal.Api.Failure.V1.Failure
  field :identity, 3, type: :string
  field :namespace, 4, type: :string

  field :last_heartbeat_details, 5,
    type: Temporal.Api.Common.V1.Payloads,
    json_name: "lastHeartbeatDetails"
end

defmodule Temporal.Api.Workflowservice.V1.RespondActivityTaskFailedResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :failures, 1, repeated: true, type: Temporal.Api.Failure.V1.Failure
end

defmodule Temporal.Api.Workflowservice.V1.RespondActivityTaskFailedByIdRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :workflow_id, 2, type: :string, json_name: "workflowId"
  field :run_id, 3, type: :string, json_name: "runId"
  field :activity_id, 4, type: :string, json_name: "activityId"
  field :failure, 5, type: Temporal.Api.Failure.V1.Failure
  field :identity, 6, type: :string

  field :last_heartbeat_details, 7,
    type: Temporal.Api.Common.V1.Payloads,
    json_name: "lastHeartbeatDetails"
end

defmodule Temporal.Api.Workflowservice.V1.RespondActivityTaskFailedByIdResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :failures, 1, repeated: true, type: Temporal.Api.Failure.V1.Failure
end

defmodule Temporal.Api.Workflowservice.V1.RespondActivityTaskCanceledRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :task_token, 1, type: :bytes, json_name: "taskToken"
  field :details, 2, type: Temporal.Api.Common.V1.Payloads
  field :identity, 3, type: :string
  field :namespace, 4, type: :string
end

defmodule Temporal.Api.Workflowservice.V1.RespondActivityTaskCanceledResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Temporal.Api.Workflowservice.V1.RespondActivityTaskCanceledByIdRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :workflow_id, 2, type: :string, json_name: "workflowId"
  field :run_id, 3, type: :string, json_name: "runId"
  field :activity_id, 4, type: :string, json_name: "activityId"
  field :details, 5, type: Temporal.Api.Common.V1.Payloads
  field :identity, 6, type: :string
end

defmodule Temporal.Api.Workflowservice.V1.RespondActivityTaskCanceledByIdResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Temporal.Api.Workflowservice.V1.RequestCancelWorkflowExecutionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string

  field :workflow_execution, 2,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "workflowExecution"

  field :identity, 3, type: :string
  field :request_id, 4, type: :string, json_name: "requestId"
  field :first_execution_run_id, 5, type: :string, json_name: "firstExecutionRunId"
  field :reason, 6, type: :string
end

defmodule Temporal.Api.Workflowservice.V1.RequestCancelWorkflowExecutionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Temporal.Api.Workflowservice.V1.SignalWorkflowExecutionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string

  field :workflow_execution, 2,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "workflowExecution"

  field :signal_name, 3, type: :string, json_name: "signalName"
  field :input, 4, type: Temporal.Api.Common.V1.Payloads
  field :identity, 5, type: :string
  field :request_id, 6, type: :string, json_name: "requestId"
  field :control, 7, type: :string
  field :header, 8, type: Temporal.Api.Common.V1.Header
end

defmodule Temporal.Api.Workflowservice.V1.SignalWorkflowExecutionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Temporal.Api.Workflowservice.V1.SignalWithStartWorkflowExecutionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :workflow_id, 2, type: :string, json_name: "workflowId"
  field :workflow_type, 3, type: Temporal.Api.Common.V1.WorkflowType, json_name: "workflowType"
  field :task_queue, 4, type: Temporal.Api.Taskqueue.V1.TaskQueue, json_name: "taskQueue"
  field :input, 5, type: Temporal.Api.Common.V1.Payloads

  field :workflow_execution_timeout, 6,
    type: Google.Protobuf.Duration,
    json_name: "workflowExecutionTimeout",
    deprecated: false

  field :workflow_run_timeout, 7,
    type: Google.Protobuf.Duration,
    json_name: "workflowRunTimeout",
    deprecated: false

  field :workflow_task_timeout, 8,
    type: Google.Protobuf.Duration,
    json_name: "workflowTaskTimeout",
    deprecated: false

  field :identity, 9, type: :string
  field :request_id, 10, type: :string, json_name: "requestId"

  field :workflow_id_reuse_policy, 11,
    type: Temporal.Api.Enums.V1.WorkflowIdReusePolicy,
    json_name: "workflowIdReusePolicy",
    enum: true

  field :signal_name, 12, type: :string, json_name: "signalName"
  field :signal_input, 13, type: Temporal.Api.Common.V1.Payloads, json_name: "signalInput"
  field :control, 14, type: :string
  field :retry_policy, 15, type: Temporal.Api.Common.V1.RetryPolicy, json_name: "retryPolicy"
  field :cron_schedule, 16, type: :string, json_name: "cronSchedule"
  field :memo, 17, type: Temporal.Api.Common.V1.Memo

  field :search_attributes, 18,
    type: Temporal.Api.Common.V1.SearchAttributes,
    json_name: "searchAttributes"

  field :header, 19, type: Temporal.Api.Common.V1.Header
end

defmodule Temporal.Api.Workflowservice.V1.SignalWithStartWorkflowExecutionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :run_id, 1, type: :string, json_name: "runId"
end

defmodule Temporal.Api.Workflowservice.V1.ResetWorkflowExecutionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string

  field :workflow_execution, 2,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "workflowExecution"

  field :reason, 3, type: :string
  field :workflow_task_finish_event_id, 4, type: :int64, json_name: "workflowTaskFinishEventId"
  field :request_id, 5, type: :string, json_name: "requestId"

  field :reset_reapply_type, 6,
    type: Temporal.Api.Enums.V1.ResetReapplyType,
    json_name: "resetReapplyType",
    enum: true
end

defmodule Temporal.Api.Workflowservice.V1.ResetWorkflowExecutionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :run_id, 1, type: :string, json_name: "runId"
end

defmodule Temporal.Api.Workflowservice.V1.TerminateWorkflowExecutionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string

  field :workflow_execution, 2,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "workflowExecution"

  field :reason, 3, type: :string
  field :details, 4, type: Temporal.Api.Common.V1.Payloads
  field :identity, 5, type: :string
  field :first_execution_run_id, 6, type: :string, json_name: "firstExecutionRunId"
end

defmodule Temporal.Api.Workflowservice.V1.TerminateWorkflowExecutionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Temporal.Api.Workflowservice.V1.DeleteWorkflowExecutionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string

  field :workflow_execution, 2,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "workflowExecution"
end

defmodule Temporal.Api.Workflowservice.V1.DeleteWorkflowExecutionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Temporal.Api.Workflowservice.V1.ListOpenWorkflowExecutionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :filters, 0

  field :namespace, 1, type: :string
  field :maximum_page_size, 2, type: :int32, json_name: "maximumPageSize"
  field :next_page_token, 3, type: :bytes, json_name: "nextPageToken"

  field :start_time_filter, 4,
    type: Temporal.Api.Filter.V1.StartTimeFilter,
    json_name: "startTimeFilter"

  field :execution_filter, 5,
    type: Temporal.Api.Filter.V1.WorkflowExecutionFilter,
    json_name: "executionFilter",
    oneof: 0

  field :type_filter, 6,
    type: Temporal.Api.Filter.V1.WorkflowTypeFilter,
    json_name: "typeFilter",
    oneof: 0
end

defmodule Temporal.Api.Workflowservice.V1.ListOpenWorkflowExecutionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :executions, 1, repeated: true, type: Temporal.Api.Workflow.V1.WorkflowExecutionInfo
  field :next_page_token, 2, type: :bytes, json_name: "nextPageToken"
end

defmodule Temporal.Api.Workflowservice.V1.ListClosedWorkflowExecutionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :filters, 0

  field :namespace, 1, type: :string
  field :maximum_page_size, 2, type: :int32, json_name: "maximumPageSize"
  field :next_page_token, 3, type: :bytes, json_name: "nextPageToken"

  field :start_time_filter, 4,
    type: Temporal.Api.Filter.V1.StartTimeFilter,
    json_name: "startTimeFilter"

  field :execution_filter, 5,
    type: Temporal.Api.Filter.V1.WorkflowExecutionFilter,
    json_name: "executionFilter",
    oneof: 0

  field :type_filter, 6,
    type: Temporal.Api.Filter.V1.WorkflowTypeFilter,
    json_name: "typeFilter",
    oneof: 0

  field :status_filter, 7,
    type: Temporal.Api.Filter.V1.StatusFilter,
    json_name: "statusFilter",
    oneof: 0
end

defmodule Temporal.Api.Workflowservice.V1.ListClosedWorkflowExecutionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :executions, 1, repeated: true, type: Temporal.Api.Workflow.V1.WorkflowExecutionInfo
  field :next_page_token, 2, type: :bytes, json_name: "nextPageToken"
end

defmodule Temporal.Api.Workflowservice.V1.ListWorkflowExecutionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :next_page_token, 3, type: :bytes, json_name: "nextPageToken"
  field :query, 4, type: :string
end

defmodule Temporal.Api.Workflowservice.V1.ListWorkflowExecutionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :executions, 1, repeated: true, type: Temporal.Api.Workflow.V1.WorkflowExecutionInfo
  field :next_page_token, 2, type: :bytes, json_name: "nextPageToken"
end

defmodule Temporal.Api.Workflowservice.V1.ListArchivedWorkflowExecutionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :next_page_token, 3, type: :bytes, json_name: "nextPageToken"
  field :query, 4, type: :string
end

defmodule Temporal.Api.Workflowservice.V1.ListArchivedWorkflowExecutionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :executions, 1, repeated: true, type: Temporal.Api.Workflow.V1.WorkflowExecutionInfo
  field :next_page_token, 2, type: :bytes, json_name: "nextPageToken"
end

defmodule Temporal.Api.Workflowservice.V1.ScanWorkflowExecutionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :next_page_token, 3, type: :bytes, json_name: "nextPageToken"
  field :query, 4, type: :string
end

defmodule Temporal.Api.Workflowservice.V1.ScanWorkflowExecutionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :executions, 1, repeated: true, type: Temporal.Api.Workflow.V1.WorkflowExecutionInfo
  field :next_page_token, 2, type: :bytes, json_name: "nextPageToken"
end

defmodule Temporal.Api.Workflowservice.V1.CountWorkflowExecutionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :query, 2, type: :string
end

defmodule Temporal.Api.Workflowservice.V1.CountWorkflowExecutionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :count, 1, type: :int64
end

defmodule Temporal.Api.Workflowservice.V1.GetSearchAttributesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Temporal.Api.Workflowservice.V1.GetSearchAttributesResponse.KeysEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Temporal.Api.Enums.V1.IndexedValueType, enum: true
end

defmodule Temporal.Api.Workflowservice.V1.GetSearchAttributesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :keys, 1,
    repeated: true,
    type: Temporal.Api.Workflowservice.V1.GetSearchAttributesResponse.KeysEntry,
    map: true
end

defmodule Temporal.Api.Workflowservice.V1.RespondQueryTaskCompletedRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :task_token, 1, type: :bytes, json_name: "taskToken"

  field :completed_type, 2,
    type: Temporal.Api.Enums.V1.QueryResultType,
    json_name: "completedType",
    enum: true

  field :query_result, 3, type: Temporal.Api.Common.V1.Payloads, json_name: "queryResult"
  field :error_message, 4, type: :string, json_name: "errorMessage"
  field :namespace, 6, type: :string
end

defmodule Temporal.Api.Workflowservice.V1.RespondQueryTaskCompletedResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Temporal.Api.Workflowservice.V1.ResetStickyTaskQueueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :execution, 2, type: Temporal.Api.Common.V1.WorkflowExecution
end

defmodule Temporal.Api.Workflowservice.V1.ResetStickyTaskQueueResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Temporal.Api.Workflowservice.V1.QueryWorkflowRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :execution, 2, type: Temporal.Api.Common.V1.WorkflowExecution
  field :query, 3, type: Temporal.Api.Query.V1.WorkflowQuery

  field :query_reject_condition, 4,
    type: Temporal.Api.Enums.V1.QueryRejectCondition,
    json_name: "queryRejectCondition",
    enum: true
end

defmodule Temporal.Api.Workflowservice.V1.QueryWorkflowResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :query_result, 1, type: Temporal.Api.Common.V1.Payloads, json_name: "queryResult"
  field :query_rejected, 2, type: Temporal.Api.Query.V1.QueryRejected, json_name: "queryRejected"
end

defmodule Temporal.Api.Workflowservice.V1.DescribeWorkflowExecutionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :execution, 2, type: Temporal.Api.Common.V1.WorkflowExecution
end

defmodule Temporal.Api.Workflowservice.V1.DescribeWorkflowExecutionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :execution_config, 1,
    type: Temporal.Api.Workflow.V1.WorkflowExecutionConfig,
    json_name: "executionConfig"

  field :workflow_execution_info, 2,
    type: Temporal.Api.Workflow.V1.WorkflowExecutionInfo,
    json_name: "workflowExecutionInfo"

  field :pending_activities, 3,
    repeated: true,
    type: Temporal.Api.Workflow.V1.PendingActivityInfo,
    json_name: "pendingActivities"

  field :pending_children, 4,
    repeated: true,
    type: Temporal.Api.Workflow.V1.PendingChildExecutionInfo,
    json_name: "pendingChildren"

  field :pending_workflow_task, 5,
    type: Temporal.Api.Workflow.V1.PendingWorkflowTaskInfo,
    json_name: "pendingWorkflowTask"
end

defmodule Temporal.Api.Workflowservice.V1.DescribeTaskQueueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :task_queue, 2, type: Temporal.Api.Taskqueue.V1.TaskQueue, json_name: "taskQueue"

  field :task_queue_type, 3,
    type: Temporal.Api.Enums.V1.TaskQueueType,
    json_name: "taskQueueType",
    enum: true

  field :include_task_queue_status, 4, type: :bool, json_name: "includeTaskQueueStatus"
end

defmodule Temporal.Api.Workflowservice.V1.DescribeTaskQueueResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :pollers, 1, repeated: true, type: Temporal.Api.Taskqueue.V1.PollerInfo

  field :task_queue_status, 2,
    type: Temporal.Api.Taskqueue.V1.TaskQueueStatus,
    json_name: "taskQueueStatus"
end

defmodule Temporal.Api.Workflowservice.V1.GetClusterInfoRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Temporal.Api.Workflowservice.V1.GetClusterInfoResponse.SupportedClientsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Temporal.Api.Workflowservice.V1.GetClusterInfoResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :supported_clients, 1,
    repeated: true,
    type: Temporal.Api.Workflowservice.V1.GetClusterInfoResponse.SupportedClientsEntry,
    json_name: "supportedClients",
    map: true

  field :server_version, 2, type: :string, json_name: "serverVersion"
  field :cluster_id, 3, type: :string, json_name: "clusterId"
  field :version_info, 4, type: Temporal.Api.Version.V1.VersionInfo, json_name: "versionInfo"
  field :cluster_name, 5, type: :string, json_name: "clusterName"
  field :history_shard_count, 6, type: :int32, json_name: "historyShardCount"
  field :persistence_store, 7, type: :string, json_name: "persistenceStore"
  field :visibility_store, 8, type: :string, json_name: "visibilityStore"
end

defmodule Temporal.Api.Workflowservice.V1.GetSystemInfoRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Temporal.Api.Workflowservice.V1.GetSystemInfoResponse.Capabilities do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :signal_and_query_header, 1, type: :bool, json_name: "signalAndQueryHeader"
  field :internal_error_differentiation, 2, type: :bool, json_name: "internalErrorDifferentiation"

  field :activity_failure_include_heartbeat, 3,
    type: :bool,
    json_name: "activityFailureIncludeHeartbeat"

  field :supports_schedules, 4, type: :bool, json_name: "supportsSchedules"
  field :encoded_failure_attributes, 5, type: :bool, json_name: "encodedFailureAttributes"
  field :build_id_based_versioning, 6, type: :bool, json_name: "buildIdBasedVersioning"
  field :upsert_memo, 7, type: :bool, json_name: "upsertMemo"
  field :eager_workflow_start, 8, type: :bool, json_name: "eagerWorkflowStart"
  field :sdk_metadata, 9, type: :bool, json_name: "sdkMetadata"
end

defmodule Temporal.Api.Workflowservice.V1.GetSystemInfoResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :server_version, 1, type: :string, json_name: "serverVersion"
  field :capabilities, 2, type: Temporal.Api.Workflowservice.V1.GetSystemInfoResponse.Capabilities
end

defmodule Temporal.Api.Workflowservice.V1.ListTaskQueuePartitionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :task_queue, 2, type: Temporal.Api.Taskqueue.V1.TaskQueue, json_name: "taskQueue"
end

defmodule Temporal.Api.Workflowservice.V1.ListTaskQueuePartitionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :activity_task_queue_partitions, 1,
    repeated: true,
    type: Temporal.Api.Taskqueue.V1.TaskQueuePartitionMetadata,
    json_name: "activityTaskQueuePartitions"

  field :workflow_task_queue_partitions, 2,
    repeated: true,
    type: Temporal.Api.Taskqueue.V1.TaskQueuePartitionMetadata,
    json_name: "workflowTaskQueuePartitions"
end

defmodule Temporal.Api.Workflowservice.V1.CreateScheduleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :schedule_id, 2, type: :string, json_name: "scheduleId"
  field :schedule, 3, type: Temporal.Api.Schedule.V1.Schedule
  field :initial_patch, 4, type: Temporal.Api.Schedule.V1.SchedulePatch, json_name: "initialPatch"
  field :identity, 5, type: :string
  field :request_id, 6, type: :string, json_name: "requestId"
  field :memo, 7, type: Temporal.Api.Common.V1.Memo

  field :search_attributes, 8,
    type: Temporal.Api.Common.V1.SearchAttributes,
    json_name: "searchAttributes"
end

defmodule Temporal.Api.Workflowservice.V1.CreateScheduleResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :conflict_token, 1, type: :bytes, json_name: "conflictToken"
end

defmodule Temporal.Api.Workflowservice.V1.DescribeScheduleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :schedule_id, 2, type: :string, json_name: "scheduleId"
end

defmodule Temporal.Api.Workflowservice.V1.DescribeScheduleResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :schedule, 1, type: Temporal.Api.Schedule.V1.Schedule
  field :info, 2, type: Temporal.Api.Schedule.V1.ScheduleInfo
  field :memo, 3, type: Temporal.Api.Common.V1.Memo

  field :search_attributes, 4,
    type: Temporal.Api.Common.V1.SearchAttributes,
    json_name: "searchAttributes"

  field :conflict_token, 5, type: :bytes, json_name: "conflictToken"
end

defmodule Temporal.Api.Workflowservice.V1.UpdateScheduleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :schedule_id, 2, type: :string, json_name: "scheduleId"
  field :schedule, 3, type: Temporal.Api.Schedule.V1.Schedule
  field :conflict_token, 4, type: :bytes, json_name: "conflictToken"
  field :identity, 5, type: :string
  field :request_id, 6, type: :string, json_name: "requestId"
end

defmodule Temporal.Api.Workflowservice.V1.UpdateScheduleResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Temporal.Api.Workflowservice.V1.PatchScheduleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :schedule_id, 2, type: :string, json_name: "scheduleId"
  field :patch, 3, type: Temporal.Api.Schedule.V1.SchedulePatch
  field :identity, 4, type: :string
  field :request_id, 5, type: :string, json_name: "requestId"
end

defmodule Temporal.Api.Workflowservice.V1.PatchScheduleResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Temporal.Api.Workflowservice.V1.ListScheduleMatchingTimesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :schedule_id, 2, type: :string, json_name: "scheduleId"
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Temporal.Api.Workflowservice.V1.ListScheduleMatchingTimesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_time, 1,
    repeated: true,
    type: Google.Protobuf.Timestamp,
    json_name: "startTime",
    deprecated: false
end

defmodule Temporal.Api.Workflowservice.V1.DeleteScheduleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :schedule_id, 2, type: :string, json_name: "scheduleId"
  field :identity, 3, type: :string
end

defmodule Temporal.Api.Workflowservice.V1.DeleteScheduleResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Temporal.Api.Workflowservice.V1.ListSchedulesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :maximum_page_size, 2, type: :int32, json_name: "maximumPageSize"
  field :next_page_token, 3, type: :bytes, json_name: "nextPageToken"
end

defmodule Temporal.Api.Workflowservice.V1.ListSchedulesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :schedules, 1, repeated: true, type: Temporal.Api.Schedule.V1.ScheduleListEntry
  field :next_page_token, 2, type: :bytes, json_name: "nextPageToken"
end

defmodule Temporal.Api.Workflowservice.V1.UpdateWorkerBuildIdCompatabilityRequest.AddNewCompatibleVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :new_build_id, 1, type: :string, json_name: "newBuildId"
  field :existing_compatible_build_id, 2, type: :string, json_name: "existingCompatibleBuildId"
  field :make_set_default, 3, type: :bool, json_name: "makeSetDefault"
end

defmodule Temporal.Api.Workflowservice.V1.UpdateWorkerBuildIdCompatabilityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :operation, 0

  field :namespace, 1, type: :string
  field :task_queue, 2, type: :string, json_name: "taskQueue"

  field :add_new_build_id_in_new_default_set, 3,
    type: :string,
    json_name: "addNewBuildIdInNewDefaultSet",
    oneof: 0

  field :add_new_compatible_build_id, 4,
    type:
      Temporal.Api.Workflowservice.V1.UpdateWorkerBuildIdCompatabilityRequest.AddNewCompatibleVersion,
    json_name: "addNewCompatibleBuildId",
    oneof: 0

  field :promote_set_by_build_id, 5, type: :string, json_name: "promoteSetByBuildId", oneof: 0

  field :promote_build_id_within_set, 6,
    type: :string,
    json_name: "promoteBuildIdWithinSet",
    oneof: 0
end

defmodule Temporal.Api.Workflowservice.V1.UpdateWorkerBuildIdCompatabilityResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :version_set_id, 1, type: :string, json_name: "versionSetId"
end

defmodule Temporal.Api.Workflowservice.V1.GetWorkerBuildIdCompatabilityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :task_queue, 2, type: :string, json_name: "taskQueue"
  field :max_sets, 3, type: :int32, json_name: "maxSets"
  field :include_retirement_candidates, 4, type: :bool, json_name: "includeRetirementCandidates"
  field :include_poller_compatability, 5, type: :bool, json_name: "includePollerCompatability"
end

defmodule Temporal.Api.Workflowservice.V1.GetWorkerBuildIdCompatabilityResponse.RetirementCandidate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :build_id, 1, type: :string, json_name: "buildId"
  field :all_workflows_are_archived, 2, type: :bool, json_name: "allWorkflowsAreArchived"
  field :pollers, 3, repeated: true, type: Temporal.Api.Taskqueue.V1.PollerInfo
end

defmodule Temporal.Api.Workflowservice.V1.GetWorkerBuildIdCompatabilityResponse.VersionsWithCompatiblePollers do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :most_recent_build_id, 1, type: :string, json_name: "mostRecentBuildId"
  field :pollers, 2, repeated: true, type: Temporal.Api.Taskqueue.V1.PollerInfo
end

defmodule Temporal.Api.Workflowservice.V1.GetWorkerBuildIdCompatabilityResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :major_version_sets, 1,
    repeated: true,
    type: Temporal.Api.Taskqueue.V1.CompatibleVersionSet,
    json_name: "majorVersionSets"

  field :retirement_candidates, 2,
    repeated: true,
    type:
      Temporal.Api.Workflowservice.V1.GetWorkerBuildIdCompatabilityResponse.RetirementCandidate,
    json_name: "retirementCandidates"

  field :active_versions_and_pollers, 3,
    repeated: true,
    type:
      Temporal.Api.Workflowservice.V1.GetWorkerBuildIdCompatabilityResponse.VersionsWithCompatiblePollers,
    json_name: "activeVersionsAndPollers"
end

defmodule Temporal.Api.Workflowservice.V1.UpdateWorkflowExecutionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string

  field :workflow_execution, 2,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "workflowExecution"

  field :first_execution_run_id, 3, type: :string, json_name: "firstExecutionRunId"
  field :wait_policy, 4, type: Temporal.Api.Update.V1.WaitPolicy, json_name: "waitPolicy"
  field :request, 5, type: Temporal.Api.Update.V1.Request
end

defmodule Temporal.Api.Workflowservice.V1.UpdateWorkflowExecutionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_ref, 1, type: Temporal.Api.Update.V1.UpdateRef, json_name: "updateRef"
  field :outcome, 2, type: Temporal.Api.Update.V1.Outcome
end

defmodule Temporal.Api.Workflowservice.V1.StartBatchOperationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :operation, 0

  field :namespace, 1, type: :string
  field :visibility_query, 2, type: :string, json_name: "visibilityQuery"
  field :job_id, 3, type: :string, json_name: "jobId"
  field :reason, 4, type: :string
  field :executions, 5, repeated: true, type: Temporal.Api.Common.V1.WorkflowExecution

  field :termination_operation, 10,
    type: Temporal.Api.Batch.V1.BatchOperationTermination,
    json_name: "terminationOperation",
    oneof: 0

  field :signal_operation, 11,
    type: Temporal.Api.Batch.V1.BatchOperationSignal,
    json_name: "signalOperation",
    oneof: 0

  field :cancellation_operation, 12,
    type: Temporal.Api.Batch.V1.BatchOperationCancellation,
    json_name: "cancellationOperation",
    oneof: 0

  field :deletion_operation, 13,
    type: Temporal.Api.Batch.V1.BatchOperationDeletion,
    json_name: "deletionOperation",
    oneof: 0
end

defmodule Temporal.Api.Workflowservice.V1.StartBatchOperationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Temporal.Api.Workflowservice.V1.StopBatchOperationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :job_id, 2, type: :string, json_name: "jobId"
  field :reason, 3, type: :string
  field :identity, 4, type: :string
end

defmodule Temporal.Api.Workflowservice.V1.StopBatchOperationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Temporal.Api.Workflowservice.V1.DescribeBatchOperationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :job_id, 2, type: :string, json_name: "jobId"
end

defmodule Temporal.Api.Workflowservice.V1.DescribeBatchOperationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :operation_type, 1,
    type: Temporal.Api.Enums.V1.BatchOperationType,
    json_name: "operationType",
    enum: true

  field :job_id, 2, type: :string, json_name: "jobId"
  field :state, 3, type: Temporal.Api.Enums.V1.BatchOperationState, enum: true
  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :close_time, 5, type: Google.Protobuf.Timestamp, json_name: "closeTime", deprecated: false
  field :total_operation_count, 6, type: :int64, json_name: "totalOperationCount"
  field :complete_operation_count, 7, type: :int64, json_name: "completeOperationCount"
  field :failure_operation_count, 8, type: :int64, json_name: "failureOperationCount"
  field :identity, 9, type: :string
  field :reason, 10, type: :string
end

defmodule Temporal.Api.Workflowservice.V1.ListBatchOperationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :next_page_token, 3, type: :bytes, json_name: "nextPageToken"
end

defmodule Temporal.Api.Workflowservice.V1.ListBatchOperationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :operation_info, 1,
    repeated: true,
    type: Temporal.Api.Batch.V1.BatchOperationInfo,
    json_name: "operationInfo"

  field :next_page_token, 2, type: :bytes, json_name: "nextPageToken"
end