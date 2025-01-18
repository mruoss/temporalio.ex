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
