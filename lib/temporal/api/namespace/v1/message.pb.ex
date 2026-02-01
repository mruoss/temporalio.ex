defmodule Temporal.Api.Namespace.V1.NamespaceInfo.DataEntry do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.namespace.v1.NamespaceInfo.DataEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Temporal.Api.Namespace.V1.NamespaceInfo.Capabilities do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.namespace.v1.NamespaceInfo.Capabilities",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :eager_workflow_start, 1, type: :bool, json_name: "eagerWorkflowStart"
  field :sync_update, 2, type: :bool, json_name: "syncUpdate"
  field :async_update, 3, type: :bool, json_name: "asyncUpdate"
  field :worker_heartbeats, 4, type: :bool, json_name: "workerHeartbeats"

  field :reported_problems_search_attribute, 5,
    type: :bool,
    json_name: "reportedProblemsSearchAttribute"

  field :workflow_pause, 6, type: :bool, json_name: "workflowPause"
end

defmodule Temporal.Api.Namespace.V1.NamespaceInfo.Limits do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.namespace.v1.NamespaceInfo.Limits",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :blob_size_limit_error, 1, type: :int64, json_name: "blobSizeLimitError"
  field :memo_size_limit_error, 2, type: :int64, json_name: "memoSizeLimitError"
end

defmodule Temporal.Api.Namespace.V1.NamespaceInfo do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.namespace.v1.NamespaceInfo",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :state, 2, type: Temporal.Api.Enums.V1.NamespaceState, enum: true
  field :description, 3, type: :string
  field :owner_email, 4, type: :string, json_name: "ownerEmail"

  field :data, 5,
    repeated: true,
    type: Temporal.Api.Namespace.V1.NamespaceInfo.DataEntry,
    map: true

  field :id, 6, type: :string
  field :capabilities, 7, type: Temporal.Api.Namespace.V1.NamespaceInfo.Capabilities
  field :limits, 8, type: Temporal.Api.Namespace.V1.NamespaceInfo.Limits
  field :supports_schedules, 100, type: :bool, json_name: "supportsSchedules"
end

defmodule Temporal.Api.Namespace.V1.NamespaceConfig.CustomSearchAttributeAliasesEntry do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.namespace.v1.NamespaceConfig.CustomSearchAttributeAliasesEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Temporal.Api.Namespace.V1.NamespaceConfig do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.namespace.v1.NamespaceConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :workflow_execution_retention_ttl, 1,
    type: Google.Protobuf.Duration,
    json_name: "workflowExecutionRetentionTtl"

  field :bad_binaries, 2, type: Temporal.Api.Namespace.V1.BadBinaries, json_name: "badBinaries"

  field :history_archival_state, 3,
    type: Temporal.Api.Enums.V1.ArchivalState,
    json_name: "historyArchivalState",
    enum: true

  field :history_archival_uri, 4, type: :string, json_name: "historyArchivalUri"

  field :visibility_archival_state, 5,
    type: Temporal.Api.Enums.V1.ArchivalState,
    json_name: "visibilityArchivalState",
    enum: true

  field :visibility_archival_uri, 6, type: :string, json_name: "visibilityArchivalUri"

  field :custom_search_attribute_aliases, 7,
    repeated: true,
    type: Temporal.Api.Namespace.V1.NamespaceConfig.CustomSearchAttributeAliasesEntry,
    json_name: "customSearchAttributeAliases",
    map: true
end

defmodule Temporal.Api.Namespace.V1.BadBinaries.BinariesEntry do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.namespace.v1.BadBinaries.BinariesEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Temporal.Api.Namespace.V1.BadBinaryInfo
end

defmodule Temporal.Api.Namespace.V1.BadBinaries do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.namespace.v1.BadBinaries",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :binaries, 1,
    repeated: true,
    type: Temporal.Api.Namespace.V1.BadBinaries.BinariesEntry,
    map: true
end

defmodule Temporal.Api.Namespace.V1.BadBinaryInfo do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.namespace.v1.BadBinaryInfo",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :reason, 1, type: :string
  field :operator, 2, type: :string
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
end

defmodule Temporal.Api.Namespace.V1.UpdateNamespaceInfo.DataEntry do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.namespace.v1.UpdateNamespaceInfo.DataEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Temporal.Api.Namespace.V1.UpdateNamespaceInfo do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.namespace.v1.UpdateNamespaceInfo",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :description, 1, type: :string
  field :owner_email, 2, type: :string, json_name: "ownerEmail"

  field :data, 3,
    repeated: true,
    type: Temporal.Api.Namespace.V1.UpdateNamespaceInfo.DataEntry,
    map: true

  field :state, 4, type: Temporal.Api.Enums.V1.NamespaceState, enum: true
end

defmodule Temporal.Api.Namespace.V1.NamespaceFilter do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.namespace.v1.NamespaceFilter",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :include_deleted, 1, type: :bool, json_name: "includeDeleted"
end
