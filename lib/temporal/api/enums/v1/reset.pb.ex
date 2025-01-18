defmodule Temporal.Api.Enums.V1.ResetReapplyExcludeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :RESET_REAPPLY_EXCLUDE_TYPE_UNSPECIFIED, 0
  field :RESET_REAPPLY_EXCLUDE_TYPE_SIGNAL, 1
  field :RESET_REAPPLY_EXCLUDE_TYPE_UPDATE, 2
  field :RESET_REAPPLY_EXCLUDE_TYPE_NEXUS, 3
  field :RESET_REAPPLY_EXCLUDE_TYPE_CANCEL_REQUEST, 4
end

defmodule Temporal.Api.Enums.V1.ResetReapplyType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :RESET_REAPPLY_TYPE_UNSPECIFIED, 0
  field :RESET_REAPPLY_TYPE_SIGNAL, 1
  field :RESET_REAPPLY_TYPE_NONE, 2
  field :RESET_REAPPLY_TYPE_ALL_ELIGIBLE, 3
end

defmodule Temporal.Api.Enums.V1.ResetType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :RESET_TYPE_UNSPECIFIED, 0
  field :RESET_TYPE_FIRST_WORKFLOW_TASK, 1
  field :RESET_TYPE_LAST_WORKFLOW_TASK, 2
end
