defmodule Temporal.Api.Replication.V1.ClusterReplicationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :cluster_name, 1, type: :string, json_name: "clusterName"
end

defmodule Temporal.Api.Replication.V1.NamespaceReplicationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :active_cluster_name, 1, type: :string, json_name: "activeClusterName"
  field :clusters, 2, repeated: true, type: Temporal.Api.Replication.V1.ClusterReplicationConfig
  field :state, 3, type: Temporal.Api.Enums.V1.ReplicationState, enum: true
end

defmodule Temporal.Api.Replication.V1.FailoverStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :failover_time, 1, type: Google.Protobuf.Timestamp, json_name: "failoverTime"
  field :failover_version, 2, type: :int64, json_name: "failoverVersion"
end
