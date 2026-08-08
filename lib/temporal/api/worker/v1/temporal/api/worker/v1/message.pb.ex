defmodule Temporal.Api.Worker.V1.EnvironmentInfo.Architecture do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "temporal.api.worker.v1.EnvironmentInfo.Architecture",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :ARCHITECTURE_UNSPECIFIED, 0
  field :ARCHITECTURE_AMD64, 1
  field :ARCHITECTURE_ARM64, 2
end

defmodule Temporal.Api.Worker.V1.EnvironmentInfo.Runtime.RuntimeType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "temporal.api.worker.v1.EnvironmentInfo.Runtime.RuntimeType",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :RUNTIME_TYPE_UNSPECIFIED, 0
  field :RUNTIME_TYPE_JVM, 1
  field :RUNTIME_TYPE_CPYTHON, 2
  field :RUNTIME_TYPE_NODE, 3
  field :RUNTIME_TYPE_BUN, 4
  field :RUNTIME_TYPE_CRUBY, 5
  field :RUNTIME_TYPE_GO, 6
  field :RUNTIME_TYPE_DOTNET_FRAMEWORK, 7
  field :RUNTIME_TYPE_DOTNET_CORE, 8
  field :RUNTIME_TYPE_NATIVE, 9
  field :RUNTIME_TYPE_ROADRUNNER, 10
end

defmodule Temporal.Api.Worker.V1.EnvironmentInfo.HostingEnvironment.HostingEnvironmentType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "temporal.api.worker.v1.EnvironmentInfo.HostingEnvironment.HostingEnvironmentType",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :HOSTING_ENVIRONMENT_TYPE_UNSPECIFIED, 0
  field :HOSTING_ENVIRONMENT_TYPE_DOCKER, 1
  field :HOSTING_ENVIRONMENT_TYPE_K8S, 2
  field :HOSTING_ENVIRONMENT_TYPE_AWS_LAMBDA, 3
  field :HOSTING_ENVIRONMENT_TYPE_AWS_ECS, 4
  field :HOSTING_ENVIRONMENT_TYPE_GOOGLE_CLOUD_RUN, 6
  field :HOSTING_ENVIRONMENT_TYPE_GOOGLE_APP_ENGINE, 7
  field :HOSTING_ENVIRONMENT_TYPE_AZURE_APP_SERVICE, 8
  field :HOSTING_ENVIRONMENT_TYPE_AZURE_FUNCTIONS, 9
  field :HOSTING_ENVIRONMENT_TYPE_AZURE_CONTAINER_APPS, 10
end

defmodule Temporal.Api.Worker.V1.EnvironmentInfo.LinuxPlatform.Libc do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "temporal.api.worker.v1.EnvironmentInfo.LinuxPlatform.Libc",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :LIBC_UNSPECIFIED, 0
  field :LIBC_GLIBC, 1
  field :LIBC_MUSL, 2
end

defmodule Temporal.Api.Worker.V1.EnvironmentInfo.WindowsPlatform.Crt do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "temporal.api.worker.v1.EnvironmentInfo.WindowsPlatform.Crt",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :CRT_UNSPECIFIED, 0
  field :CRT_UCRT, 1
  field :CRT_MSVCRT, 2
  field :CRT_MINGW, 3
  field :CRT_CYGWIN, 4
end

defmodule Temporal.Api.Worker.V1.WorkerPollerInfo do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.worker.v1.WorkerPollerInfo",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :current_pollers, 1, type: :int32, json_name: "currentPollers"

  field :last_successful_poll_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "lastSuccessfulPollTime"

  field :is_autoscaling, 3, type: :bool, json_name: "isAutoscaling"
end

defmodule Temporal.Api.Worker.V1.WorkerSlotsInfo do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.worker.v1.WorkerSlotsInfo",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :current_available_slots, 1, type: :int32, json_name: "currentAvailableSlots"
  field :current_used_slots, 2, type: :int32, json_name: "currentUsedSlots"
  field :slot_supplier_kind, 3, type: :string, json_name: "slotSupplierKind"
  field :total_processed_tasks, 4, type: :int32, json_name: "totalProcessedTasks"
  field :total_failed_tasks, 5, type: :int32, json_name: "totalFailedTasks"
  field :last_interval_processed_tasks, 6, type: :int32, json_name: "lastIntervalProcessedTasks"
  field :last_interval_failure_tasks, 7, type: :int32, json_name: "lastIntervalFailureTasks"
end

defmodule Temporal.Api.Worker.V1.WorkerHostInfo do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.worker.v1.WorkerHostInfo",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :host_name, 1, type: :string, json_name: "hostName"
  field :worker_grouping_key, 5, type: :string, json_name: "workerGroupingKey"
  field :process_id, 2, type: :string, json_name: "processId"
  field :current_host_cpu_usage, 3, type: :float, json_name: "currentHostCpuUsage"
  field :current_host_mem_usage, 4, type: :float, json_name: "currentHostMemUsage"
end

defmodule Temporal.Api.Worker.V1.WorkerHeartbeat do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.worker.v1.WorkerHeartbeat",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :worker_instance_key, 1, type: :string, json_name: "workerInstanceKey"
  field :worker_identity, 2, type: :string, json_name: "workerIdentity"
  field :host_info, 3, type: Temporal.Api.Worker.V1.WorkerHostInfo, json_name: "hostInfo"
  field :task_queue, 4, type: :string, json_name: "taskQueue"

  field :deployment_version, 5,
    type: Temporal.Api.Deployment.V1.WorkerDeploymentVersion,
    json_name: "deploymentVersion"

  field :sdk_name, 6, type: :string, json_name: "sdkName"
  field :sdk_version, 7, type: :string, json_name: "sdkVersion"
  field :status, 8, type: Temporal.Api.Enums.V1.WorkerStatus, enum: true
  field :start_time, 9, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :heartbeat_time, 10, type: Google.Protobuf.Timestamp, json_name: "heartbeatTime"

  field :elapsed_since_last_heartbeat, 11,
    type: Google.Protobuf.Duration,
    json_name: "elapsedSinceLastHeartbeat"

  field :workflow_task_slots_info, 12,
    type: Temporal.Api.Worker.V1.WorkerSlotsInfo,
    json_name: "workflowTaskSlotsInfo"

  field :activity_task_slots_info, 13,
    type: Temporal.Api.Worker.V1.WorkerSlotsInfo,
    json_name: "activityTaskSlotsInfo"

  field :nexus_task_slots_info, 14,
    type: Temporal.Api.Worker.V1.WorkerSlotsInfo,
    json_name: "nexusTaskSlotsInfo"

  field :local_activity_slots_info, 15,
    type: Temporal.Api.Worker.V1.WorkerSlotsInfo,
    json_name: "localActivitySlotsInfo"

  field :workflow_poller_info, 16,
    type: Temporal.Api.Worker.V1.WorkerPollerInfo,
    json_name: "workflowPollerInfo"

  field :workflow_sticky_poller_info, 17,
    type: Temporal.Api.Worker.V1.WorkerPollerInfo,
    json_name: "workflowStickyPollerInfo"

  field :activity_poller_info, 18,
    type: Temporal.Api.Worker.V1.WorkerPollerInfo,
    json_name: "activityPollerInfo"

  field :nexus_poller_info, 19,
    type: Temporal.Api.Worker.V1.WorkerPollerInfo,
    json_name: "nexusPollerInfo"

  field :total_sticky_cache_hit, 20, type: :int32, json_name: "totalStickyCacheHit"
  field :total_sticky_cache_miss, 21, type: :int32, json_name: "totalStickyCacheMiss"
  field :current_sticky_cache_size, 22, type: :int32, json_name: "currentStickyCacheSize"
  field :plugins, 23, repeated: true, type: Temporal.Api.Worker.V1.PluginInfo
  field :drivers, 24, repeated: true, type: Temporal.Api.Worker.V1.StorageDriverInfo
  field :environment, 25, type: Temporal.Api.Worker.V1.EnvironmentInfo
end

defmodule Temporal.Api.Worker.V1.WorkerInfo do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.worker.v1.WorkerInfo",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :worker_heartbeat, 1,
    type: Temporal.Api.Worker.V1.WorkerHeartbeat,
    json_name: "workerHeartbeat"
end

defmodule Temporal.Api.Worker.V1.WorkerListInfo do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.worker.v1.WorkerListInfo",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :worker_instance_key, 1, type: :string, json_name: "workerInstanceKey"
  field :worker_identity, 2, type: :string, json_name: "workerIdentity"
  field :task_queue, 3, type: :string, json_name: "taskQueue"

  field :deployment_version, 4,
    type: Temporal.Api.Deployment.V1.WorkerDeploymentVersion,
    json_name: "deploymentVersion"

  field :sdk_name, 5, type: :string, json_name: "sdkName"
  field :sdk_version, 6, type: :string, json_name: "sdkVersion"
  field :status, 7, type: Temporal.Api.Enums.V1.WorkerStatus, enum: true
  field :start_time, 8, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :host_name, 9, type: :string, json_name: "hostName"
  field :worker_grouping_key, 10, type: :string, json_name: "workerGroupingKey"
  field :process_id, 11, type: :string, json_name: "processId"
  field :plugins, 12, repeated: true, type: Temporal.Api.Worker.V1.PluginInfo
  field :drivers, 13, repeated: true, type: Temporal.Api.Worker.V1.StorageDriverInfo
end

defmodule Temporal.Api.Worker.V1.PluginInfo do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.worker.v1.PluginInfo",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :version, 2, type: :string
end

defmodule Temporal.Api.Worker.V1.StorageDriverInfo do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.worker.v1.StorageDriverInfo",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :type, 1, type: :string
end

defmodule Temporal.Api.Worker.V1.EnvironmentInfo.Runtime do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.worker.v1.EnvironmentInfo.Runtime",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :type, 1, type: Temporal.Api.Worker.V1.EnvironmentInfo.Runtime.RuntimeType, enum: true
  field :version, 2, type: :string
end

defmodule Temporal.Api.Worker.V1.EnvironmentInfo.HostingEnvironment do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.worker.v1.EnvironmentInfo.HostingEnvironment",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :type, 1,
    type: Temporal.Api.Worker.V1.EnvironmentInfo.HostingEnvironment.HostingEnvironmentType,
    enum: true

  field :version, 2, type: :string
end

defmodule Temporal.Api.Worker.V1.EnvironmentInfo.Platform do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.worker.v1.EnvironmentInfo.Platform",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  oneof :variant, 0

  field :linux, 1, type: Temporal.Api.Worker.V1.EnvironmentInfo.LinuxPlatform, oneof: 0
  field :macos, 2, type: Temporal.Api.Worker.V1.EnvironmentInfo.MacOSPlatform, oneof: 0
  field :windows, 3, type: Temporal.Api.Worker.V1.EnvironmentInfo.WindowsPlatform, oneof: 0
end

defmodule Temporal.Api.Worker.V1.EnvironmentInfo.LinuxPlatform do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.worker.v1.EnvironmentInfo.LinuxPlatform",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :version, 1, type: :string
  field :architecture, 2, type: Temporal.Api.Worker.V1.EnvironmentInfo.Architecture, enum: true
  field :libc, 3, type: Temporal.Api.Worker.V1.EnvironmentInfo.LinuxPlatform.Libc, enum: true
end

defmodule Temporal.Api.Worker.V1.EnvironmentInfo.MacOSPlatform do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.worker.v1.EnvironmentInfo.MacOSPlatform",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :version, 1, type: :string
  field :architecture, 2, type: Temporal.Api.Worker.V1.EnvironmentInfo.Architecture, enum: true
end

defmodule Temporal.Api.Worker.V1.EnvironmentInfo.WindowsPlatform do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.worker.v1.EnvironmentInfo.WindowsPlatform",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :version, 1, type: :string
  field :architecture, 2, type: Temporal.Api.Worker.V1.EnvironmentInfo.Architecture, enum: true
  field :crt, 3, type: Temporal.Api.Worker.V1.EnvironmentInfo.WindowsPlatform.Crt, enum: true
end

defmodule Temporal.Api.Worker.V1.EnvironmentInfo do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.worker.v1.EnvironmentInfo",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :runtimes, 1, repeated: true, type: Temporal.Api.Worker.V1.EnvironmentInfo.Runtime

  field :hosting_environments, 2,
    repeated: true,
    type: Temporal.Api.Worker.V1.EnvironmentInfo.HostingEnvironment,
    json_name: "hostingEnvironments"

  field :platform, 3, type: Temporal.Api.Worker.V1.EnvironmentInfo.Platform
end

defmodule Temporal.Api.Worker.V1.WorkerCommand do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.worker.v1.WorkerCommand",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  oneof :type, 0

  field :cancel_activity, 1,
    type: Temporal.Api.Worker.V1.CancelActivityCommand,
    json_name: "cancelActivity",
    oneof: 0
end

defmodule Temporal.Api.Worker.V1.CancelActivityCommand do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.worker.v1.CancelActivityCommand",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :task_token, 1, type: :bytes, json_name: "taskToken"
end

defmodule Temporal.Api.Worker.V1.WorkerCommandResult do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.worker.v1.WorkerCommandResult",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  oneof :type, 0

  field :cancel_activity, 1,
    type: Temporal.Api.Worker.V1.CancelActivityResult,
    json_name: "cancelActivity",
    oneof: 0
end

defmodule Temporal.Api.Worker.V1.CancelActivityResult do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.worker.v1.CancelActivityResult",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3
end
