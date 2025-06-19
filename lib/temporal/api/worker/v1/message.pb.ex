defmodule Temporal.Api.Worker.V1.WorkerPollerInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :current_pollers, 1, type: :int32, json_name: "currentPollers"

  field :last_successful_poll_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "lastSuccessfulPollTime"

  field :is_autoscaling, 3, type: :bool, json_name: "isAutoscaling"
end

defmodule Temporal.Api.Worker.V1.WorkerSlotsInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :host_name, 1, type: :string, json_name: "hostName"
  field :process_id, 2, type: :string, json_name: "processId"
  field :current_host_cpu_usage, 3, type: :float, json_name: "currentHostCpuUsage"
  field :current_host_mem_usage, 4, type: :float, json_name: "currentHostMemUsage"
end

defmodule Temporal.Api.Worker.V1.WorkerHeartbeat do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
end

defmodule Temporal.Api.Worker.V1.WorkerInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :worker_heartbeat, 1,
    type: Temporal.Api.Worker.V1.WorkerHeartbeat,
    json_name: "workerHeartbeat"
end
