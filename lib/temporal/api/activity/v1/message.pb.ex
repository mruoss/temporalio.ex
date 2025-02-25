defmodule Temporal.Api.Activity.V1.ActivityOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :task_queue, 1, type: Temporal.Api.Taskqueue.V1.TaskQueue, json_name: "taskQueue"

  field :schedule_to_close_timeout, 2,
    type: Google.Protobuf.Duration,
    json_name: "scheduleToCloseTimeout"

  field :schedule_to_start_timeout, 3,
    type: Google.Protobuf.Duration,
    json_name: "scheduleToStartTimeout"

  field :start_to_close_timeout, 4,
    type: Google.Protobuf.Duration,
    json_name: "startToCloseTimeout"

  field :heartbeat_timeout, 5, type: Google.Protobuf.Duration, json_name: "heartbeatTimeout"
  field :retry_policy, 6, type: Temporal.Api.Common.V1.RetryPolicy, json_name: "retryPolicy"
end
