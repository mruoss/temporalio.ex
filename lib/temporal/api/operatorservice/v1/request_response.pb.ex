defmodule Temporal.Api.Operatorservice.V1.AddSearchAttributesRequest.SearchAttributesEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: Temporal.Api.Enums.V1.IndexedValueType, enum: true
end

defmodule Temporal.Api.Operatorservice.V1.AddSearchAttributesRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :search_attributes, 1,
    repeated: true,
    type: Temporal.Api.Operatorservice.V1.AddSearchAttributesRequest.SearchAttributesEntry,
    json_name: "searchAttributes",
    map: true

  field :namespace, 2, type: :string
end

defmodule Temporal.Api.Operatorservice.V1.AddSearchAttributesResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"
end

defmodule Temporal.Api.Operatorservice.V1.RemoveSearchAttributesRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :search_attributes, 1, repeated: true, type: :string, json_name: "searchAttributes"
  field :namespace, 2, type: :string
end

defmodule Temporal.Api.Operatorservice.V1.RemoveSearchAttributesResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"
end

defmodule Temporal.Api.Operatorservice.V1.ListSearchAttributesRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :namespace, 1, type: :string
end

defmodule Temporal.Api.Operatorservice.V1.ListSearchAttributesResponse.CustomAttributesEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: Temporal.Api.Enums.V1.IndexedValueType, enum: true
end

defmodule Temporal.Api.Operatorservice.V1.ListSearchAttributesResponse.SystemAttributesEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: Temporal.Api.Enums.V1.IndexedValueType, enum: true
end

defmodule Temporal.Api.Operatorservice.V1.ListSearchAttributesResponse.StorageSchemaEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Temporal.Api.Operatorservice.V1.ListSearchAttributesResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :custom_attributes, 1,
    repeated: true,
    type: Temporal.Api.Operatorservice.V1.ListSearchAttributesResponse.CustomAttributesEntry,
    json_name: "customAttributes",
    map: true

  field :system_attributes, 2,
    repeated: true,
    type: Temporal.Api.Operatorservice.V1.ListSearchAttributesResponse.SystemAttributesEntry,
    json_name: "systemAttributes",
    map: true

  field :storage_schema, 3,
    repeated: true,
    type: Temporal.Api.Operatorservice.V1.ListSearchAttributesResponse.StorageSchemaEntry,
    json_name: "storageSchema",
    map: true
end

defmodule Temporal.Api.Operatorservice.V1.DeleteNamespaceRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :namespace, 1, type: :string
  field :namespace_id, 2, type: :string, json_name: "namespaceId"
end

defmodule Temporal.Api.Operatorservice.V1.DeleteNamespaceResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :deleted_namespace, 1, type: :string, json_name: "deletedNamespace"
end

defmodule Temporal.Api.Operatorservice.V1.AddOrUpdateRemoteClusterRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :frontend_address, 1, type: :string, json_name: "frontendAddress"

  field :enable_remote_cluster_connection, 2,
    type: :bool,
    json_name: "enableRemoteClusterConnection"
end

defmodule Temporal.Api.Operatorservice.V1.AddOrUpdateRemoteClusterResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"
end

defmodule Temporal.Api.Operatorservice.V1.RemoveRemoteClusterRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :cluster_name, 1, type: :string, json_name: "clusterName"
end

defmodule Temporal.Api.Operatorservice.V1.RemoveRemoteClusterResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"
end

defmodule Temporal.Api.Operatorservice.V1.ListClustersRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :next_page_token, 2, type: :bytes, json_name: "nextPageToken"
end

defmodule Temporal.Api.Operatorservice.V1.ListClustersResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :clusters, 1, repeated: true, type: Temporal.Api.Operatorservice.V1.ClusterMetadata
  field :next_page_token, 4, type: :bytes, json_name: "nextPageToken"
end

defmodule Temporal.Api.Operatorservice.V1.ClusterMetadata do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :cluster_name, 1, type: :string, json_name: "clusterName"
  field :cluster_id, 2, type: :string, json_name: "clusterId"
  field :address, 3, type: :string
  field :initial_failover_version, 4, type: :int64, json_name: "initialFailoverVersion"
  field :history_shard_count, 5, type: :int32, json_name: "historyShardCount"
  field :is_connection_enabled, 6, type: :bool, json_name: "isConnectionEnabled"
end