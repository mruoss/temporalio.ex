defmodule Temporal.Api.Enums.V1.EventType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :EVENT_TYPE_WORKFLOW_EXECUTION_STARTED, 1
  field :EVENT_TYPE_WORKFLOW_EXECUTION_COMPLETED, 2
  field :EVENT_TYPE_WORKFLOW_EXECUTION_FAILED, 3
  field :EVENT_TYPE_WORKFLOW_EXECUTION_TIMED_OUT, 4
  field :EVENT_TYPE_WORKFLOW_TASK_SCHEDULED, 5
  field :EVENT_TYPE_WORKFLOW_TASK_STARTED, 6
  field :EVENT_TYPE_WORKFLOW_TASK_COMPLETED, 7
  field :EVENT_TYPE_WORKFLOW_TASK_TIMED_OUT, 8
  field :EVENT_TYPE_WORKFLOW_TASK_FAILED, 9
  field :EVENT_TYPE_ACTIVITY_TASK_SCHEDULED, 10
  field :EVENT_TYPE_ACTIVITY_TASK_STARTED, 11
  field :EVENT_TYPE_ACTIVITY_TASK_COMPLETED, 12
  field :EVENT_TYPE_ACTIVITY_TASK_FAILED, 13
  field :EVENT_TYPE_ACTIVITY_TASK_TIMED_OUT, 14
  field :EVENT_TYPE_ACTIVITY_TASK_CANCEL_REQUESTED, 15
  field :EVENT_TYPE_ACTIVITY_TASK_CANCELED, 16
  field :EVENT_TYPE_TIMER_STARTED, 17
  field :EVENT_TYPE_TIMER_FIRED, 18
  field :EVENT_TYPE_TIMER_CANCELED, 19
  field :EVENT_TYPE_WORKFLOW_EXECUTION_CANCEL_REQUESTED, 20
  field :EVENT_TYPE_WORKFLOW_EXECUTION_CANCELED, 21
  field :EVENT_TYPE_REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_INITIATED, 22
  field :EVENT_TYPE_REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_FAILED, 23
  field :EVENT_TYPE_EXTERNAL_WORKFLOW_EXECUTION_CANCEL_REQUESTED, 24
  field :EVENT_TYPE_MARKER_RECORDED, 25
  field :EVENT_TYPE_WORKFLOW_EXECUTION_SIGNALED, 26
  field :EVENT_TYPE_WORKFLOW_EXECUTION_TERMINATED, 27
  field :EVENT_TYPE_WORKFLOW_EXECUTION_CONTINUED_AS_NEW, 28
  field :EVENT_TYPE_START_CHILD_WORKFLOW_EXECUTION_INITIATED, 29
  field :EVENT_TYPE_START_CHILD_WORKFLOW_EXECUTION_FAILED, 30
  field :EVENT_TYPE_CHILD_WORKFLOW_EXECUTION_STARTED, 31
  field :EVENT_TYPE_CHILD_WORKFLOW_EXECUTION_COMPLETED, 32
  field :EVENT_TYPE_CHILD_WORKFLOW_EXECUTION_FAILED, 33
  field :EVENT_TYPE_CHILD_WORKFLOW_EXECUTION_CANCELED, 34
  field :EVENT_TYPE_CHILD_WORKFLOW_EXECUTION_TIMED_OUT, 35
  field :EVENT_TYPE_CHILD_WORKFLOW_EXECUTION_TERMINATED, 36
  field :EVENT_TYPE_SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_INITIATED, 37
  field :EVENT_TYPE_SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_FAILED, 38
  field :EVENT_TYPE_EXTERNAL_WORKFLOW_EXECUTION_SIGNALED, 39
  field :EVENT_TYPE_UPSERT_WORKFLOW_SEARCH_ATTRIBUTES, 40
  field :EVENT_TYPE_WORKFLOW_EXECUTION_UPDATE_ADMITTED, 47
  field :EVENT_TYPE_WORKFLOW_EXECUTION_UPDATE_ACCEPTED, 41
  field :EVENT_TYPE_WORKFLOW_EXECUTION_UPDATE_REJECTED, 42
  field :EVENT_TYPE_WORKFLOW_EXECUTION_UPDATE_COMPLETED, 43
  field :EVENT_TYPE_WORKFLOW_PROPERTIES_MODIFIED_EXTERNALLY, 44
  field :EVENT_TYPE_ACTIVITY_PROPERTIES_MODIFIED_EXTERNALLY, 45
  field :EVENT_TYPE_WORKFLOW_PROPERTIES_MODIFIED, 46
  field :EVENT_TYPE_NEXUS_OPERATION_SCHEDULED, 48
  field :EVENT_TYPE_NEXUS_OPERATION_STARTED, 49
  field :EVENT_TYPE_NEXUS_OPERATION_COMPLETED, 50
  field :EVENT_TYPE_NEXUS_OPERATION_FAILED, 51
  field :EVENT_TYPE_NEXUS_OPERATION_CANCELED, 52
  field :EVENT_TYPE_NEXUS_OPERATION_TIMED_OUT, 53
  field :EVENT_TYPE_NEXUS_OPERATION_CANCEL_REQUESTED, 54
  field :EVENT_TYPE_WORKFLOW_EXECUTION_OPTIONS_UPDATED, 55
end
