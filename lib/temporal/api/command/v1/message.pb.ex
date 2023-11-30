defmodule Temporal.Api.Command.V1.ScheduleActivityTaskCommandAttributes do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

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
  field :retry_policy, 11, type: Temporal.Api.Common.V1.RetryPolicy, json_name: "retryPolicy"
  field :request_eager_execution, 12, type: :bool, json_name: "requestEagerExecution"
  field :use_compatible_version, 13, type: :bool, json_name: "useCompatibleVersion"
end

defmodule Temporal.Api.Command.V1.RequestCancelActivityTaskCommandAttributes do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :scheduled_event_id, 1, type: :int64, json_name: "scheduledEventId"
end

defmodule Temporal.Api.Command.V1.StartTimerCommandAttributes do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :timer_id, 1, type: :string, json_name: "timerId"
  field :start_to_fire_timeout, 2, type: Google.Protobuf.Duration, json_name: "startToFireTimeout"
end

defmodule Temporal.Api.Command.V1.CompleteWorkflowExecutionCommandAttributes do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :result, 1, type: Temporal.Api.Common.V1.Payloads
end

defmodule Temporal.Api.Command.V1.FailWorkflowExecutionCommandAttributes do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :failure, 1, type: Temporal.Api.Failure.V1.Failure
end

defmodule Temporal.Api.Command.V1.CancelTimerCommandAttributes do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :timer_id, 1, type: :string, json_name: "timerId"
end

defmodule Temporal.Api.Command.V1.CancelWorkflowExecutionCommandAttributes do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :details, 1, type: Temporal.Api.Common.V1.Payloads
end

defmodule Temporal.Api.Command.V1.RequestCancelExternalWorkflowExecutionCommandAttributes do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :namespace, 1, type: :string
  field :workflow_id, 2, type: :string, json_name: "workflowId"
  field :run_id, 3, type: :string, json_name: "runId"
  field :control, 4, type: :string
  field :child_workflow_only, 5, type: :bool, json_name: "childWorkflowOnly"
  field :reason, 6, type: :string
end

defmodule Temporal.Api.Command.V1.SignalExternalWorkflowExecutionCommandAttributes do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :namespace, 1, type: :string
  field :execution, 2, type: Temporal.Api.Common.V1.WorkflowExecution
  field :signal_name, 3, type: :string, json_name: "signalName"
  field :input, 4, type: Temporal.Api.Common.V1.Payloads
  field :control, 5, type: :string
  field :child_workflow_only, 6, type: :bool, json_name: "childWorkflowOnly"
  field :header, 7, type: Temporal.Api.Common.V1.Header
end

defmodule Temporal.Api.Command.V1.UpsertWorkflowSearchAttributesCommandAttributes do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :search_attributes, 1,
    type: Temporal.Api.Common.V1.SearchAttributes,
    json_name: "searchAttributes"
end

defmodule Temporal.Api.Command.V1.ModifyWorkflowPropertiesCommandAttributes do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :upserted_memo, 1, type: Temporal.Api.Common.V1.Memo, json_name: "upsertedMemo"
end

defmodule Temporal.Api.Command.V1.RecordMarkerCommandAttributes.DetailsEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: Temporal.Api.Common.V1.Payloads
end

defmodule Temporal.Api.Command.V1.RecordMarkerCommandAttributes do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :marker_name, 1, type: :string, json_name: "markerName"

  field :details, 2,
    repeated: true,
    type: Temporal.Api.Command.V1.RecordMarkerCommandAttributes.DetailsEntry,
    map: true

  field :header, 3, type: Temporal.Api.Common.V1.Header
  field :failure, 4, type: Temporal.Api.Failure.V1.Failure
end

defmodule Temporal.Api.Command.V1.ContinueAsNewWorkflowExecutionCommandAttributes do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :workflow_type, 1, type: Temporal.Api.Common.V1.WorkflowType, json_name: "workflowType"
  field :task_queue, 2, type: Temporal.Api.Taskqueue.V1.TaskQueue, json_name: "taskQueue"
  field :input, 3, type: Temporal.Api.Common.V1.Payloads
  field :workflow_run_timeout, 4, type: Google.Protobuf.Duration, json_name: "workflowRunTimeout"

  field :workflow_task_timeout, 5,
    type: Google.Protobuf.Duration,
    json_name: "workflowTaskTimeout"

  field :backoff_start_interval, 6,
    type: Google.Protobuf.Duration,
    json_name: "backoffStartInterval"

  field :retry_policy, 7, type: Temporal.Api.Common.V1.RetryPolicy, json_name: "retryPolicy"
  field :initiator, 8, type: Temporal.Api.Enums.V1.ContinueAsNewInitiator, enum: true
  field :failure, 9, type: Temporal.Api.Failure.V1.Failure

  field :last_completion_result, 10,
    type: Temporal.Api.Common.V1.Payloads,
    json_name: "lastCompletionResult"

  field :cron_schedule, 11, type: :string, json_name: "cronSchedule"
  field :header, 12, type: Temporal.Api.Common.V1.Header
  field :memo, 13, type: Temporal.Api.Common.V1.Memo

  field :search_attributes, 14,
    type: Temporal.Api.Common.V1.SearchAttributes,
    json_name: "searchAttributes"

  field :use_compatible_version, 15, type: :bool, json_name: "useCompatibleVersion"
end

defmodule Temporal.Api.Command.V1.StartChildWorkflowExecutionCommandAttributes do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :namespace, 1, type: :string
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

  field :control, 10, type: :string

  field :workflow_id_reuse_policy, 11,
    type: Temporal.Api.Enums.V1.WorkflowIdReusePolicy,
    json_name: "workflowIdReusePolicy",
    enum: true

  field :retry_policy, 12, type: Temporal.Api.Common.V1.RetryPolicy, json_name: "retryPolicy"
  field :cron_schedule, 13, type: :string, json_name: "cronSchedule"
  field :header, 14, type: Temporal.Api.Common.V1.Header
  field :memo, 15, type: Temporal.Api.Common.V1.Memo

  field :search_attributes, 16,
    type: Temporal.Api.Common.V1.SearchAttributes,
    json_name: "searchAttributes"

  field :use_compatible_version, 17, type: :bool, json_name: "useCompatibleVersion"
end

defmodule Temporal.Api.Command.V1.ProtocolMessageCommandAttributes do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :message_id, 1, type: :string, json_name: "messageId"
end

defmodule Temporal.Api.Command.V1.Command do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  oneof :attributes, 0

  field :command_type, 1,
    type: Temporal.Api.Enums.V1.CommandType,
    json_name: "commandType",
    enum: true

  field :schedule_activity_task_command_attributes, 2,
    type: Temporal.Api.Command.V1.ScheduleActivityTaskCommandAttributes,
    json_name: "scheduleActivityTaskCommandAttributes",
    oneof: 0

  field :start_timer_command_attributes, 3,
    type: Temporal.Api.Command.V1.StartTimerCommandAttributes,
    json_name: "startTimerCommandAttributes",
    oneof: 0

  field :complete_workflow_execution_command_attributes, 4,
    type: Temporal.Api.Command.V1.CompleteWorkflowExecutionCommandAttributes,
    json_name: "completeWorkflowExecutionCommandAttributes",
    oneof: 0

  field :fail_workflow_execution_command_attributes, 5,
    type: Temporal.Api.Command.V1.FailWorkflowExecutionCommandAttributes,
    json_name: "failWorkflowExecutionCommandAttributes",
    oneof: 0

  field :request_cancel_activity_task_command_attributes, 6,
    type: Temporal.Api.Command.V1.RequestCancelActivityTaskCommandAttributes,
    json_name: "requestCancelActivityTaskCommandAttributes",
    oneof: 0

  field :cancel_timer_command_attributes, 7,
    type: Temporal.Api.Command.V1.CancelTimerCommandAttributes,
    json_name: "cancelTimerCommandAttributes",
    oneof: 0

  field :cancel_workflow_execution_command_attributes, 8,
    type: Temporal.Api.Command.V1.CancelWorkflowExecutionCommandAttributes,
    json_name: "cancelWorkflowExecutionCommandAttributes",
    oneof: 0

  field :request_cancel_external_workflow_execution_command_attributes, 9,
    type: Temporal.Api.Command.V1.RequestCancelExternalWorkflowExecutionCommandAttributes,
    json_name: "requestCancelExternalWorkflowExecutionCommandAttributes",
    oneof: 0

  field :record_marker_command_attributes, 10,
    type: Temporal.Api.Command.V1.RecordMarkerCommandAttributes,
    json_name: "recordMarkerCommandAttributes",
    oneof: 0

  field :continue_as_new_workflow_execution_command_attributes, 11,
    type: Temporal.Api.Command.V1.ContinueAsNewWorkflowExecutionCommandAttributes,
    json_name: "continueAsNewWorkflowExecutionCommandAttributes",
    oneof: 0

  field :start_child_workflow_execution_command_attributes, 12,
    type: Temporal.Api.Command.V1.StartChildWorkflowExecutionCommandAttributes,
    json_name: "startChildWorkflowExecutionCommandAttributes",
    oneof: 0

  field :signal_external_workflow_execution_command_attributes, 13,
    type: Temporal.Api.Command.V1.SignalExternalWorkflowExecutionCommandAttributes,
    json_name: "signalExternalWorkflowExecutionCommandAttributes",
    oneof: 0

  field :upsert_workflow_search_attributes_command_attributes, 14,
    type: Temporal.Api.Command.V1.UpsertWorkflowSearchAttributesCommandAttributes,
    json_name: "upsertWorkflowSearchAttributesCommandAttributes",
    oneof: 0

  field :protocol_message_command_attributes, 15,
    type: Temporal.Api.Command.V1.ProtocolMessageCommandAttributes,
    json_name: "protocolMessageCommandAttributes",
    oneof: 0

  field :modify_workflow_properties_command_attributes, 17,
    type: Temporal.Api.Command.V1.ModifyWorkflowPropertiesCommandAttributes,
    json_name: "modifyWorkflowPropertiesCommandAttributes",
    oneof: 0
end