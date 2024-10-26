defmodule Temporal.Api.Operatorservice.V1.AddSearchAttributesRequest.SearchAttributesEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :key, 1, type: :string
  field :value, 2, type: Temporal.Api.Enums.V1.IndexedValueType, enum: true
end

defmodule Temporal.Api.Operatorservice.V1.AddSearchAttributesRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :search_attributes, 1,
    repeated: true,
    type: Temporal.Api.Operatorservice.V1.AddSearchAttributesRequest.SearchAttributesEntry,
    json_name: "searchAttributes",
    map: true

  field :namespace, 2, type: :string
end

defmodule Temporal.Api.Operatorservice.V1.AddSearchAttributesResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"
end

defmodule Temporal.Api.Operatorservice.V1.RemoveSearchAttributesRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :search_attributes, 1, repeated: true, type: :string, json_name: "searchAttributes"
  field :namespace, 2, type: :string
end

defmodule Temporal.Api.Operatorservice.V1.RemoveSearchAttributesResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"
end

defmodule Temporal.Api.Operatorservice.V1.ListSearchAttributesRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :namespace, 1, type: :string
end

defmodule Temporal.Api.Operatorservice.V1.ListSearchAttributesResponse.CustomAttributesEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :key, 1, type: :string
  field :value, 2, type: Temporal.Api.Enums.V1.IndexedValueType, enum: true
end

defmodule Temporal.Api.Operatorservice.V1.ListSearchAttributesResponse.SystemAttributesEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :key, 1, type: :string
  field :value, 2, type: Temporal.Api.Enums.V1.IndexedValueType, enum: true
end

defmodule Temporal.Api.Operatorservice.V1.ListSearchAttributesResponse.StorageSchemaEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Temporal.Api.Operatorservice.V1.ListSearchAttributesResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

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

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :namespace, 1, type: :string
  field :namespace_id, 2, type: :string, json_name: "namespaceId"

  field :namespace_delete_delay, 3,
    type: Google.Protobuf.Duration,
    json_name: "namespaceDeleteDelay"
end

defmodule Temporal.Api.Operatorservice.V1.DeleteNamespaceResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :deleted_namespace, 1, type: :string, json_name: "deletedNamespace"
end

defmodule Temporal.Api.Operatorservice.V1.AddOrUpdateRemoteClusterRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :frontend_address, 1, type: :string, json_name: "frontendAddress"

  field :enable_remote_cluster_connection, 2,
    type: :bool,
    json_name: "enableRemoteClusterConnection"

  field :frontend_http_address, 3, type: :string, json_name: "frontendHttpAddress"
end

defmodule Temporal.Api.Operatorservice.V1.AddOrUpdateRemoteClusterResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"
end

defmodule Temporal.Api.Operatorservice.V1.RemoveRemoteClusterRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :cluster_name, 1, type: :string, json_name: "clusterName"
end

defmodule Temporal.Api.Operatorservice.V1.RemoveRemoteClusterResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"
end

defmodule Temporal.Api.Operatorservice.V1.ListClustersRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :next_page_token, 2, type: :bytes, json_name: "nextPageToken"
end

defmodule Temporal.Api.Operatorservice.V1.ListClustersResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :clusters, 1, repeated: true, type: Temporal.Api.Operatorservice.V1.ClusterMetadata
  field :next_page_token, 4, type: :bytes, json_name: "nextPageToken"
end

defmodule Temporal.Api.Operatorservice.V1.ClusterMetadata do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :cluster_name, 1, type: :string, json_name: "clusterName"
  field :cluster_id, 2, type: :string, json_name: "clusterId"
  field :address, 3, type: :string
  field :http_address, 7, type: :string, json_name: "httpAddress"
  field :initial_failover_version, 4, type: :int64, json_name: "initialFailoverVersion"
  field :history_shard_count, 5, type: :int32, json_name: "historyShardCount"
  field :is_connection_enabled, 6, type: :bool, json_name: "isConnectionEnabled"
end

defmodule Temporal.Api.Operatorservice.V1.GetNexusEndpointRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :id, 1, type: :string
end

defmodule Temporal.Api.Operatorservice.V1.GetNexusEndpointResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :endpoint, 1, type: Temporal.Api.Nexus.V1.Endpoint
end

defmodule Temporal.Api.Operatorservice.V1.CreateNexusEndpointRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :spec, 1, type: Temporal.Api.Nexus.V1.EndpointSpec
end

defmodule Temporal.Api.Operatorservice.V1.CreateNexusEndpointResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :endpoint, 1, type: Temporal.Api.Nexus.V1.Endpoint
end

defmodule Temporal.Api.Operatorservice.V1.UpdateNexusEndpointRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :id, 1, type: :string
  field :version, 2, type: :int64
  field :spec, 3, type: Temporal.Api.Nexus.V1.EndpointSpec
end

defmodule Temporal.Api.Operatorservice.V1.UpdateNexusEndpointResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :endpoint, 1, type: Temporal.Api.Nexus.V1.Endpoint
end

defmodule Temporal.Api.Operatorservice.V1.DeleteNexusEndpointRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :id, 1, type: :string
  field :version, 2, type: :int64
end

defmodule Temporal.Api.Operatorservice.V1.DeleteNexusEndpointResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"
end

defmodule Temporal.Api.Operatorservice.V1.ListNexusEndpointsRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :next_page_token, 2, type: :bytes, json_name: "nextPageToken"
  field :name, 3, type: :string
end

defmodule Temporal.Api.Operatorservice.V1.ListNexusEndpointsResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :next_page_token, 1, type: :bytes, json_name: "nextPageToken"
  field :endpoints, 2, repeated: true, type: Temporal.Api.Nexus.V1.Endpoint
end