defmodule Temporal.Api.Schedule.V1.CalendarSpec do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :second, 1, type: :string
  field :minute, 2, type: :string
  field :hour, 3, type: :string
  field :day_of_month, 4, type: :string, json_name: "dayOfMonth"
  field :month, 5, type: :string
  field :year, 6, type: :string
  field :day_of_week, 7, type: :string, json_name: "dayOfWeek"
  field :comment, 8, type: :string
end

defmodule Temporal.Api.Schedule.V1.Range do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :start, 1, type: :int32
  field :end, 2, type: :int32
  field :step, 3, type: :int32
end

defmodule Temporal.Api.Schedule.V1.StructuredCalendarSpec do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :second, 1, repeated: true, type: Temporal.Api.Schedule.V1.Range
  field :minute, 2, repeated: true, type: Temporal.Api.Schedule.V1.Range
  field :hour, 3, repeated: true, type: Temporal.Api.Schedule.V1.Range

  field :day_of_month, 4,
    repeated: true,
    type: Temporal.Api.Schedule.V1.Range,
    json_name: "dayOfMonth"

  field :month, 5, repeated: true, type: Temporal.Api.Schedule.V1.Range
  field :year, 6, repeated: true, type: Temporal.Api.Schedule.V1.Range

  field :day_of_week, 7,
    repeated: true,
    type: Temporal.Api.Schedule.V1.Range,
    json_name: "dayOfWeek"

  field :comment, 8, type: :string
end

defmodule Temporal.Api.Schedule.V1.IntervalSpec do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :interval, 1, type: Google.Protobuf.Duration, deprecated: false
  field :phase, 2, type: Google.Protobuf.Duration, deprecated: false
end

defmodule Temporal.Api.Schedule.V1.ScheduleSpec do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :structured_calendar, 7,
    repeated: true,
    type: Temporal.Api.Schedule.V1.StructuredCalendarSpec,
    json_name: "structuredCalendar"

  field :cron_string, 8, repeated: true, type: :string, json_name: "cronString"
  field :calendar, 1, repeated: true, type: Temporal.Api.Schedule.V1.CalendarSpec
  field :interval, 2, repeated: true, type: Temporal.Api.Schedule.V1.IntervalSpec

  field :exclude_calendar, 3,
    repeated: true,
    type: Temporal.Api.Schedule.V1.CalendarSpec,
    json_name: "excludeCalendar",
    deprecated: true

  field :exclude_structured_calendar, 9,
    repeated: true,
    type: Temporal.Api.Schedule.V1.StructuredCalendarSpec,
    json_name: "excludeStructuredCalendar"

  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :jitter, 6, type: Google.Protobuf.Duration, deprecated: false
  field :timezone_name, 10, type: :string, json_name: "timezoneName"
  field :timezone_data, 11, type: :bytes, json_name: "timezoneData"
end

defmodule Temporal.Api.Schedule.V1.SchedulePolicies do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :overlap_policy, 1,
    type: Temporal.Api.Enums.V1.ScheduleOverlapPolicy,
    json_name: "overlapPolicy",
    enum: true

  field :catchup_window, 2,
    type: Google.Protobuf.Duration,
    json_name: "catchupWindow",
    deprecated: false

  field :pause_on_failure, 3, type: :bool, json_name: "pauseOnFailure"
end

defmodule Temporal.Api.Schedule.V1.ScheduleAction do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  oneof :action, 0

  field :start_workflow, 1,
    type: Temporal.Api.Workflow.V1.NewWorkflowExecutionInfo,
    json_name: "startWorkflow",
    oneof: 0
end

defmodule Temporal.Api.Schedule.V1.ScheduleActionResult do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :schedule_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "scheduleTime",
    deprecated: false

  field :actual_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "actualTime",
    deprecated: false

  field :start_workflow_result, 11,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "startWorkflowResult"
end

defmodule Temporal.Api.Schedule.V1.ScheduleState do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :notes, 1, type: :string
  field :paused, 2, type: :bool
  field :limited_actions, 3, type: :bool, json_name: "limitedActions"
  field :remaining_actions, 4, type: :int64, json_name: "remainingActions"
end

defmodule Temporal.Api.Schedule.V1.TriggerImmediatelyRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :overlap_policy, 1,
    type: Temporal.Api.Enums.V1.ScheduleOverlapPolicy,
    json_name: "overlapPolicy",
    enum: true
end

defmodule Temporal.Api.Schedule.V1.BackfillRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :overlap_policy, 3,
    type: Temporal.Api.Enums.V1.ScheduleOverlapPolicy,
    json_name: "overlapPolicy",
    enum: true
end

defmodule Temporal.Api.Schedule.V1.SchedulePatch do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :trigger_immediately, 1,
    type: Temporal.Api.Schedule.V1.TriggerImmediatelyRequest,
    json_name: "triggerImmediately"

  field :backfill_request, 2,
    repeated: true,
    type: Temporal.Api.Schedule.V1.BackfillRequest,
    json_name: "backfillRequest"

  field :pause, 3, type: :string
  field :unpause, 4, type: :string
end

defmodule Temporal.Api.Schedule.V1.ScheduleInfo do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :action_count, 1, type: :int64, json_name: "actionCount"
  field :missed_catchup_window, 2, type: :int64, json_name: "missedCatchupWindow"
  field :overlap_skipped, 3, type: :int64, json_name: "overlapSkipped"

  field :running_workflows, 9,
    repeated: true,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "runningWorkflows"

  field :recent_actions, 4,
    repeated: true,
    type: Temporal.Api.Schedule.V1.ScheduleActionResult,
    json_name: "recentActions"

  field :future_action_times, 5,
    repeated: true,
    type: Google.Protobuf.Timestamp,
    json_name: "futureActionTimes",
    deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :invalid_schedule_error, 8,
    type: :string,
    json_name: "invalidScheduleError",
    deprecated: true
end

defmodule Temporal.Api.Schedule.V1.Schedule do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :spec, 1, type: Temporal.Api.Schedule.V1.ScheduleSpec
  field :action, 2, type: Temporal.Api.Schedule.V1.ScheduleAction
  field :policies, 3, type: Temporal.Api.Schedule.V1.SchedulePolicies
  field :state, 4, type: Temporal.Api.Schedule.V1.ScheduleState
end

defmodule Temporal.Api.Schedule.V1.ScheduleListInfo do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :spec, 1, type: Temporal.Api.Schedule.V1.ScheduleSpec
  field :workflow_type, 2, type: Temporal.Api.Common.V1.WorkflowType, json_name: "workflowType"
  field :notes, 3, type: :string
  field :paused, 4, type: :bool

  field :recent_actions, 5,
    repeated: true,
    type: Temporal.Api.Schedule.V1.ScheduleActionResult,
    json_name: "recentActions"

  field :future_action_times, 6,
    repeated: true,
    type: Google.Protobuf.Timestamp,
    json_name: "futureActionTimes",
    deprecated: false
end

defmodule Temporal.Api.Schedule.V1.ScheduleListEntry do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :schedule_id, 1, type: :string, json_name: "scheduleId"
  field :memo, 2, type: Temporal.Api.Common.V1.Memo

  field :search_attributes, 3,
    type: Temporal.Api.Common.V1.SearchAttributes,
    json_name: "searchAttributes"

  field :info, 4, type: Temporal.Api.Schedule.V1.ScheduleListInfo
end