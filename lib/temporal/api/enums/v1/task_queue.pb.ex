defmodule Temporal.Api.Enums.V1.TaskQueueKind do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "temporal.api.enums.v1.TaskQueueKind",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :TASK_QUEUE_KIND_UNSPECIFIED, 0
  field :TASK_QUEUE_KIND_NORMAL, 1
  field :TASK_QUEUE_KIND_STICKY, 2
end

defmodule Temporal.Api.Enums.V1.TaskQueueType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "temporal.api.enums.v1.TaskQueueType",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :TASK_QUEUE_TYPE_UNSPECIFIED, 0
  field :TASK_QUEUE_TYPE_WORKFLOW, 1
  field :TASK_QUEUE_TYPE_ACTIVITY, 2
  field :TASK_QUEUE_TYPE_NEXUS, 3
end

defmodule Temporal.Api.Enums.V1.TaskReachability do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "temporal.api.enums.v1.TaskReachability",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :TASK_REACHABILITY_UNSPECIFIED, 0
  field :TASK_REACHABILITY_NEW_WORKFLOWS, 1
  field :TASK_REACHABILITY_EXISTING_WORKFLOWS, 2
  field :TASK_REACHABILITY_OPEN_WORKFLOWS, 3
  field :TASK_REACHABILITY_CLOSED_WORKFLOWS, 4
end

defmodule Temporal.Api.Enums.V1.BuildIdTaskReachability do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "temporal.api.enums.v1.BuildIdTaskReachability",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :BUILD_ID_TASK_REACHABILITY_UNSPECIFIED, 0
  field :BUILD_ID_TASK_REACHABILITY_REACHABLE, 1
  field :BUILD_ID_TASK_REACHABILITY_CLOSED_WORKFLOWS_ONLY, 2
  field :BUILD_ID_TASK_REACHABILITY_UNREACHABLE, 3
end

defmodule Temporal.Api.Enums.V1.DescribeTaskQueueMode do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "temporal.api.enums.v1.DescribeTaskQueueMode",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :DESCRIBE_TASK_QUEUE_MODE_UNSPECIFIED, 0
  field :DESCRIBE_TASK_QUEUE_MODE_ENHANCED, 1
end

defmodule Temporal.Api.Enums.V1.RateLimitSource do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "temporal.api.enums.v1.RateLimitSource",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :RATE_LIMIT_SOURCE_UNSPECIFIED, 0
  field :RATE_LIMIT_SOURCE_API, 1
  field :RATE_LIMIT_SOURCE_WORKER, 2
  field :RATE_LIMIT_SOURCE_SYSTEM, 3
end

defmodule Temporal.Api.Enums.V1.RoutingConfigUpdateState do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "temporal.api.enums.v1.RoutingConfigUpdateState",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :ROUTING_CONFIG_UPDATE_STATE_UNSPECIFIED, 0
  field :ROUTING_CONFIG_UPDATE_STATE_IN_PROGRESS, 1
  field :ROUTING_CONFIG_UPDATE_STATE_COMPLETED, 2
end
