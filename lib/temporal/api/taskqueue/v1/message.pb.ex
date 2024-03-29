defmodule Temporal.Api.Taskqueue.V1.TaskQueue do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :name, 1, type: :string
  field :kind, 2, type: Temporal.Api.Enums.V1.TaskQueueKind, enum: true
  field :normal_name, 3, type: :string, json_name: "normalName"
end

defmodule Temporal.Api.Taskqueue.V1.TaskQueueMetadata do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :max_tasks_per_second, 1,
    type: Google.Protobuf.DoubleValue,
    json_name: "maxTasksPerSecond"
end

defmodule Temporal.Api.Taskqueue.V1.TaskQueueStatus do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :backlog_count_hint, 1, type: :int64, json_name: "backlogCountHint"
  field :read_level, 2, type: :int64, json_name: "readLevel"
  field :ack_level, 3, type: :int64, json_name: "ackLevel"
  field :rate_per_second, 4, type: :double, json_name: "ratePerSecond"
  field :task_id_block, 5, type: Temporal.Api.Taskqueue.V1.TaskIdBlock, json_name: "taskIdBlock"
end

defmodule Temporal.Api.Taskqueue.V1.TaskIdBlock do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :start_id, 1, type: :int64, json_name: "startId"
  field :end_id, 2, type: :int64, json_name: "endId"
end

defmodule Temporal.Api.Taskqueue.V1.TaskQueuePartitionMetadata do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :owner_host_name, 2, type: :string, json_name: "ownerHostName"
end

defmodule Temporal.Api.Taskqueue.V1.PollerInfo do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :last_access_time, 1, type: Google.Protobuf.Timestamp, json_name: "lastAccessTime"
  field :identity, 2, type: :string
  field :rate_per_second, 3, type: :double, json_name: "ratePerSecond"

  field :worker_version_capabilities, 4,
    type: Temporal.Api.Common.V1.WorkerVersionCapabilities,
    json_name: "workerVersionCapabilities"
end

defmodule Temporal.Api.Taskqueue.V1.StickyExecutionAttributes do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :worker_task_queue, 1,
    type: Temporal.Api.Taskqueue.V1.TaskQueue,
    json_name: "workerTaskQueue"

  field :schedule_to_start_timeout, 2,
    type: Google.Protobuf.Duration,
    json_name: "scheduleToStartTimeout"
end

defmodule Temporal.Api.Taskqueue.V1.CompatibleVersionSet do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :build_ids, 1, repeated: true, type: :string, json_name: "buildIds"
end

defmodule Temporal.Api.Taskqueue.V1.TaskQueueReachability do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :task_queue, 1, type: :string, json_name: "taskQueue"
  field :reachability, 2, repeated: true, type: Temporal.Api.Enums.V1.TaskReachability, enum: true
end

defmodule Temporal.Api.Taskqueue.V1.BuildIdReachability do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :build_id, 1, type: :string, json_name: "buildId"

  field :task_queue_reachability, 2,
    repeated: true,
    type: Temporal.Api.Taskqueue.V1.TaskQueueReachability,
    json_name: "taskQueueReachability"
end