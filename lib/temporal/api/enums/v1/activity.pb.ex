defmodule Temporal.Api.Enums.V1.ActivityExecutionStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ACTIVITY_EXECUTION_STATUS_UNSPECIFIED, 0
  field :ACTIVITY_EXECUTION_STATUS_RUNNING, 1
  field :ACTIVITY_EXECUTION_STATUS_COMPLETED, 2
  field :ACTIVITY_EXECUTION_STATUS_FAILED, 3
  field :ACTIVITY_EXECUTION_STATUS_CANCELED, 4
  field :ACTIVITY_EXECUTION_STATUS_TERMINATED, 5
  field :ACTIVITY_EXECUTION_STATUS_TIMED_OUT, 6
end

defmodule Temporal.Api.Enums.V1.ActivityIdReusePolicy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ACTIVITY_ID_REUSE_POLICY_UNSPECIFIED, 0
  field :ACTIVITY_ID_REUSE_POLICY_ALLOW_DUPLICATE, 1
  field :ACTIVITY_ID_REUSE_POLICY_ALLOW_DUPLICATE_FAILED_ONLY, 2
  field :ACTIVITY_ID_REUSE_POLICY_REJECT_DUPLICATE, 3
end

defmodule Temporal.Api.Enums.V1.ActivityIdConflictPolicy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ACTIVITY_ID_CONFLICT_POLICY_UNSPECIFIED, 0
  field :ACTIVITY_ID_CONFLICT_POLICY_FAIL, 1
  field :ACTIVITY_ID_CONFLICT_POLICY_USE_EXISTING, 2
end
