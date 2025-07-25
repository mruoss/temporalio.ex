defmodule Temporal.Api.Enums.V1.NamespaceState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :NAMESPACE_STATE_UNSPECIFIED, 0
  field :NAMESPACE_STATE_REGISTERED, 1
  field :NAMESPACE_STATE_DEPRECATED, 2
  field :NAMESPACE_STATE_DELETED, 3
end

defmodule Temporal.Api.Enums.V1.ArchivalState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ARCHIVAL_STATE_UNSPECIFIED, 0
  field :ARCHIVAL_STATE_DISABLED, 1
  field :ARCHIVAL_STATE_ENABLED, 2
end

defmodule Temporal.Api.Enums.V1.ReplicationState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :REPLICATION_STATE_UNSPECIFIED, 0
  field :REPLICATION_STATE_NORMAL, 1
  field :REPLICATION_STATE_HANDOVER, 2
end
