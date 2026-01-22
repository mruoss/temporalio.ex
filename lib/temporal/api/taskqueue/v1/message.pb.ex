defmodule Temporal.Api.Taskqueue.V1.TaskQueue do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.taskqueue.v1.TaskQueue",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :kind, 2, type: Temporal.Api.Enums.V1.TaskQueueKind, enum: true
  field :normal_name, 3, type: :string, json_name: "normalName"
end

defmodule Temporal.Api.Taskqueue.V1.TaskQueueMetadata do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.taskqueue.v1.TaskQueueMetadata",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :max_tasks_per_second, 1,
    type: Google.Protobuf.DoubleValue,
    json_name: "maxTasksPerSecond"
end

defmodule Temporal.Api.Taskqueue.V1.TaskQueueVersioningInfo do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.taskqueue.v1.TaskQueueVersioningInfo",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :current_deployment_version, 7,
    type: Temporal.Api.Deployment.V1.WorkerDeploymentVersion,
    json_name: "currentDeploymentVersion"

  field :current_version, 1, type: :string, json_name: "currentVersion", deprecated: true

  field :ramping_deployment_version, 9,
    type: Temporal.Api.Deployment.V1.WorkerDeploymentVersion,
    json_name: "rampingDeploymentVersion"

  field :ramping_version, 2, type: :string, json_name: "rampingVersion", deprecated: true
  field :ramping_version_percentage, 3, type: :float, json_name: "rampingVersionPercentage"
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Temporal.Api.Taskqueue.V1.TaskQueueVersionSelection do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.taskqueue.v1.TaskQueueVersionSelection",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :build_ids, 1, repeated: true, type: :string, json_name: "buildIds"
  field :unversioned, 2, type: :bool
  field :all_active, 3, type: :bool, json_name: "allActive"
end

defmodule Temporal.Api.Taskqueue.V1.TaskQueueVersionInfo.TypesInfoEntry do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.taskqueue.v1.TaskQueueVersionInfo.TypesInfoEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :int32
  field :value, 2, type: Temporal.Api.Taskqueue.V1.TaskQueueTypeInfo
end

defmodule Temporal.Api.Taskqueue.V1.TaskQueueVersionInfo do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.taskqueue.v1.TaskQueueVersionInfo",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :types_info, 1,
    repeated: true,
    type: Temporal.Api.Taskqueue.V1.TaskQueueVersionInfo.TypesInfoEntry,
    json_name: "typesInfo",
    map: true

  field :task_reachability, 2,
    type: Temporal.Api.Enums.V1.BuildIdTaskReachability,
    json_name: "taskReachability",
    enum: true
end

defmodule Temporal.Api.Taskqueue.V1.TaskQueueTypeInfo do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.taskqueue.v1.TaskQueueTypeInfo",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :pollers, 1, repeated: true, type: Temporal.Api.Taskqueue.V1.PollerInfo
  field :stats, 2, type: Temporal.Api.Taskqueue.V1.TaskQueueStats
end

defmodule Temporal.Api.Taskqueue.V1.TaskQueueStats do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.taskqueue.v1.TaskQueueStats",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :approximate_backlog_count, 1, type: :int64, json_name: "approximateBacklogCount"

  field :approximate_backlog_age, 2,
    type: Google.Protobuf.Duration,
    json_name: "approximateBacklogAge"

  field :tasks_add_rate, 3, type: :float, json_name: "tasksAddRate"
  field :tasks_dispatch_rate, 4, type: :float, json_name: "tasksDispatchRate"
end

defmodule Temporal.Api.Taskqueue.V1.TaskQueueStatus do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.taskqueue.v1.TaskQueueStatus",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :backlog_count_hint, 1, type: :int64, json_name: "backlogCountHint"
  field :read_level, 2, type: :int64, json_name: "readLevel"
  field :ack_level, 3, type: :int64, json_name: "ackLevel"
  field :rate_per_second, 4, type: :double, json_name: "ratePerSecond"
  field :task_id_block, 5, type: Temporal.Api.Taskqueue.V1.TaskIdBlock, json_name: "taskIdBlock"
end

defmodule Temporal.Api.Taskqueue.V1.TaskIdBlock do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.taskqueue.v1.TaskIdBlock",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :start_id, 1, type: :int64, json_name: "startId"
  field :end_id, 2, type: :int64, json_name: "endId"
end

defmodule Temporal.Api.Taskqueue.V1.TaskQueuePartitionMetadata do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.taskqueue.v1.TaskQueuePartitionMetadata",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :owner_host_name, 2, type: :string, json_name: "ownerHostName"
end

defmodule Temporal.Api.Taskqueue.V1.PollerInfo do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.taskqueue.v1.PollerInfo",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :last_access_time, 1, type: Google.Protobuf.Timestamp, json_name: "lastAccessTime"
  field :identity, 2, type: :string
  field :rate_per_second, 3, type: :double, json_name: "ratePerSecond"

  field :worker_version_capabilities, 4,
    type: Temporal.Api.Common.V1.WorkerVersionCapabilities,
    json_name: "workerVersionCapabilities",
    deprecated: true

  field :deployment_options, 5,
    type: Temporal.Api.Deployment.V1.WorkerDeploymentOptions,
    json_name: "deploymentOptions"
end

defmodule Temporal.Api.Taskqueue.V1.StickyExecutionAttributes do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.taskqueue.v1.StickyExecutionAttributes",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :worker_task_queue, 1,
    type: Temporal.Api.Taskqueue.V1.TaskQueue,
    json_name: "workerTaskQueue"

  field :schedule_to_start_timeout, 2,
    type: Google.Protobuf.Duration,
    json_name: "scheduleToStartTimeout"
end

defmodule Temporal.Api.Taskqueue.V1.CompatibleVersionSet do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.taskqueue.v1.CompatibleVersionSet",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :build_ids, 1, repeated: true, type: :string, json_name: "buildIds"
end

defmodule Temporal.Api.Taskqueue.V1.TaskQueueReachability do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.taskqueue.v1.TaskQueueReachability",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :task_queue, 1, type: :string, json_name: "taskQueue"
  field :reachability, 2, repeated: true, type: Temporal.Api.Enums.V1.TaskReachability, enum: true
end

defmodule Temporal.Api.Taskqueue.V1.BuildIdReachability do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.taskqueue.v1.BuildIdReachability",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :build_id, 1, type: :string, json_name: "buildId"

  field :task_queue_reachability, 2,
    repeated: true,
    type: Temporal.Api.Taskqueue.V1.TaskQueueReachability,
    json_name: "taskQueueReachability"
end

defmodule Temporal.Api.Taskqueue.V1.RampByPercentage do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.taskqueue.v1.RampByPercentage",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :ramp_percentage, 1, type: :float, json_name: "rampPercentage"
end

defmodule Temporal.Api.Taskqueue.V1.BuildIdAssignmentRule do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.taskqueue.v1.BuildIdAssignmentRule",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  oneof :ramp, 0

  field :target_build_id, 1, type: :string, json_name: "targetBuildId"

  field :percentage_ramp, 3,
    type: Temporal.Api.Taskqueue.V1.RampByPercentage,
    json_name: "percentageRamp",
    oneof: 0
end

defmodule Temporal.Api.Taskqueue.V1.CompatibleBuildIdRedirectRule do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.taskqueue.v1.CompatibleBuildIdRedirectRule",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :source_build_id, 1, type: :string, json_name: "sourceBuildId"
  field :target_build_id, 2, type: :string, json_name: "targetBuildId"
end

defmodule Temporal.Api.Taskqueue.V1.TimestampedBuildIdAssignmentRule do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.taskqueue.v1.TimestampedBuildIdAssignmentRule",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :rule, 1, type: Temporal.Api.Taskqueue.V1.BuildIdAssignmentRule
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
end

defmodule Temporal.Api.Taskqueue.V1.TimestampedCompatibleBuildIdRedirectRule do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.taskqueue.v1.TimestampedCompatibleBuildIdRedirectRule",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :rule, 1, type: Temporal.Api.Taskqueue.V1.CompatibleBuildIdRedirectRule
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
end

defmodule Temporal.Api.Taskqueue.V1.PollerScalingDecision do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.taskqueue.v1.PollerScalingDecision",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :poll_request_delta_suggestion, 1, type: :int32, json_name: "pollRequestDeltaSuggestion"
end

defmodule Temporal.Api.Taskqueue.V1.RateLimit do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.taskqueue.v1.RateLimit",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :requests_per_second, 1, type: :float, json_name: "requestsPerSecond"
end

defmodule Temporal.Api.Taskqueue.V1.ConfigMetadata do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.taskqueue.v1.ConfigMetadata",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :reason, 1, type: :string
  field :update_identity, 2, type: :string, json_name: "updateIdentity"
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Temporal.Api.Taskqueue.V1.RateLimitConfig do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.taskqueue.v1.RateLimitConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :rate_limit, 1, type: Temporal.Api.Taskqueue.V1.RateLimit, json_name: "rateLimit"
  field :metadata, 2, type: Temporal.Api.Taskqueue.V1.ConfigMetadata
end

defmodule Temporal.Api.Taskqueue.V1.TaskQueueConfig.FairnessWeightOverridesEntry do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.taskqueue.v1.TaskQueueConfig.FairnessWeightOverridesEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :float
end

defmodule Temporal.Api.Taskqueue.V1.TaskQueueConfig do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.taskqueue.v1.TaskQueueConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :queue_rate_limit, 1,
    type: Temporal.Api.Taskqueue.V1.RateLimitConfig,
    json_name: "queueRateLimit"

  field :fairness_keys_rate_limit_default, 2,
    type: Temporal.Api.Taskqueue.V1.RateLimitConfig,
    json_name: "fairnessKeysRateLimitDefault"

  field :fairness_weight_overrides, 3,
    repeated: true,
    type: Temporal.Api.Taskqueue.V1.TaskQueueConfig.FairnessWeightOverridesEntry,
    json_name: "fairnessWeightOverrides",
    map: true
end
