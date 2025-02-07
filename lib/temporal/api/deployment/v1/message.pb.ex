defmodule Temporal.Api.Deployment.V1.WorkerDeploymentOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :deployment_name, 1, type: :string, json_name: "deploymentName"
  field :build_id, 2, type: :string, json_name: "buildId"

  field :worker_versioning_mode, 3,
    type: Temporal.Api.Enums.V1.WorkerVersioningMode,
    json_name: "workerVersioningMode",
    enum: true
end

defmodule Temporal.Api.Deployment.V1.Deployment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :series_name, 1, type: :string, json_name: "seriesName"
  field :build_id, 2, type: :string, json_name: "buildId"
end

defmodule Temporal.Api.Deployment.V1.DeploymentInfo.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Temporal.Api.Common.V1.Payload
end

defmodule Temporal.Api.Deployment.V1.DeploymentInfo.TaskQueueInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: Temporal.Api.Enums.V1.TaskQueueType, enum: true
  field :first_poller_time, 3, type: Google.Protobuf.Timestamp, json_name: "firstPollerTime"
end

defmodule Temporal.Api.Deployment.V1.DeploymentInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :deployment, 1, type: Temporal.Api.Deployment.V1.Deployment
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"

  field :task_queue_infos, 3,
    repeated: true,
    type: Temporal.Api.Deployment.V1.DeploymentInfo.TaskQueueInfo,
    json_name: "taskQueueInfos"

  field :metadata, 4,
    repeated: true,
    type: Temporal.Api.Deployment.V1.DeploymentInfo.MetadataEntry,
    map: true

  field :is_current, 5, type: :bool, json_name: "isCurrent"
end

defmodule Temporal.Api.Deployment.V1.UpdateDeploymentMetadata.UpsertEntriesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Temporal.Api.Common.V1.Payload
end

defmodule Temporal.Api.Deployment.V1.UpdateDeploymentMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :upsert_entries, 1,
    repeated: true,
    type: Temporal.Api.Deployment.V1.UpdateDeploymentMetadata.UpsertEntriesEntry,
    json_name: "upsertEntries",
    map: true

  field :remove_entries, 2, repeated: true, type: :string, json_name: "removeEntries"
end

defmodule Temporal.Api.Deployment.V1.DeploymentListInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :deployment, 1, type: Temporal.Api.Deployment.V1.Deployment
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :is_current, 3, type: :bool, json_name: "isCurrent"
end

defmodule Temporal.Api.Deployment.V1.WorkerDeploymentVersionInfo.VersionTaskQueueInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: Temporal.Api.Enums.V1.TaskQueueType, enum: true
end

defmodule Temporal.Api.Deployment.V1.WorkerDeploymentVersionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :version, 1, type: :string
  field :deployment_name, 2, type: :string, json_name: "deploymentName"
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :routing_changed_time, 4, type: Google.Protobuf.Timestamp, json_name: "routingChangedTime"
  field :current_since_time, 5, type: Google.Protobuf.Timestamp, json_name: "currentSinceTime"
  field :ramping_since_time, 6, type: Google.Protobuf.Timestamp, json_name: "rampingSinceTime"
  field :ramp_percentage, 7, type: :float, json_name: "rampPercentage"

  field :task_queue_infos, 8,
    repeated: true,
    type: Temporal.Api.Deployment.V1.WorkerDeploymentVersionInfo.VersionTaskQueueInfo,
    json_name: "taskQueueInfos"

  field :drainage_info, 9,
    type: Temporal.Api.Deployment.V1.VersionDrainageInfo,
    json_name: "drainageInfo"

  field :metadata, 10, type: Temporal.Api.Deployment.V1.VersionMetadata
end

defmodule Temporal.Api.Deployment.V1.VersionDrainageInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :status, 1, type: Temporal.Api.Enums.V1.VersionDrainageStatus, enum: true
  field :last_changed_time, 2, type: Google.Protobuf.Timestamp, json_name: "lastChangedTime"
  field :last_checked_time, 3, type: Google.Protobuf.Timestamp, json_name: "lastCheckedTime"
end

defmodule Temporal.Api.Deployment.V1.WorkerDeploymentInfo.WorkerDeploymentVersionSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :version, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"

  field :drainage_status, 3,
    type: Temporal.Api.Enums.V1.VersionDrainageStatus,
    json_name: "drainageStatus",
    enum: true
end

defmodule Temporal.Api.Deployment.V1.WorkerDeploymentInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string

  field :version_summaries, 2,
    repeated: true,
    type: Temporal.Api.Deployment.V1.WorkerDeploymentInfo.WorkerDeploymentVersionSummary,
    json_name: "versionSummaries"

  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"

  field :routing_config, 4,
    type: Temporal.Api.Deployment.V1.RoutingConfig,
    json_name: "routingConfig"

  field :last_modifier_identity, 5, type: :string, json_name: "lastModifierIdentity"
end

defmodule Temporal.Api.Deployment.V1.VersionMetadata.EntriesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Temporal.Api.Common.V1.Payload
end

defmodule Temporal.Api.Deployment.V1.VersionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :entries, 1,
    repeated: true,
    type: Temporal.Api.Deployment.V1.VersionMetadata.EntriesEntry,
    map: true
end

defmodule Temporal.Api.Deployment.V1.RoutingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :current_version, 1, type: :string, json_name: "currentVersion"
  field :ramping_version, 2, type: :string, json_name: "rampingVersion"
  field :ramping_version_percentage, 3, type: :float, json_name: "rampingVersionPercentage"

  field :current_version_changed_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "currentVersionChangedTime"

  field :ramping_version_changed_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "rampingVersionChangedTime"

  field :ramping_version_percentage_changed_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "rampingVersionPercentageChangedTime"
end
