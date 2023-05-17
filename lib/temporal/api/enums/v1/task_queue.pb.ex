defmodule Temporal.Api.Enums.V1.TaskQueueKind do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TASK_QUEUE_KIND_UNSPECIFIED, 0
  field :TASK_QUEUE_KIND_NORMAL, 1
  field :TASK_QUEUE_KIND_STICKY, 2
end

defmodule Temporal.Api.Enums.V1.TaskQueueType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TASK_QUEUE_TYPE_UNSPECIFIED, 0
  field :TASK_QUEUE_TYPE_WORKFLOW, 1
  field :TASK_QUEUE_TYPE_ACTIVITY, 2
end