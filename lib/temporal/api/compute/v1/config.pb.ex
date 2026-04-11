defmodule Temporal.Api.Compute.V1.ComputeConfigScalingGroup do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.compute.v1.ComputeConfigScalingGroup",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :task_queue_types, 1,
    repeated: true,
    type: Temporal.Api.Enums.V1.TaskQueueType,
    json_name: "taskQueueTypes",
    enum: true

  field :provider, 3, type: Temporal.Api.Compute.V1.ComputeProvider
  field :scaler, 4, type: Temporal.Api.Compute.V1.ComputeScaler
end

defmodule Temporal.Api.Compute.V1.ComputeConfig.ScalingGroupsEntry do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.compute.v1.ComputeConfig.ScalingGroupsEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Temporal.Api.Compute.V1.ComputeConfigScalingGroup
end

defmodule Temporal.Api.Compute.V1.ComputeConfig do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.compute.v1.ComputeConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :scaling_groups, 1,
    repeated: true,
    type: Temporal.Api.Compute.V1.ComputeConfig.ScalingGroupsEntry,
    json_name: "scalingGroups",
    map: true
end

defmodule Temporal.Api.Compute.V1.ComputeConfigScalingGroupUpdate do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.compute.v1.ComputeConfigScalingGroupUpdate",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :scaling_group, 1,
    type: Temporal.Api.Compute.V1.ComputeConfigScalingGroup,
    json_name: "scalingGroup"

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Temporal.Api.Compute.V1.ComputeConfigSummary.ScalingGroupsEntry do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.compute.v1.ComputeConfigSummary.ScalingGroupsEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Temporal.Api.Compute.V1.ComputeConfigScalingGroupSummary
end

defmodule Temporal.Api.Compute.V1.ComputeConfigSummary do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.compute.v1.ComputeConfigSummary",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :scaling_groups, 1,
    repeated: true,
    type: Temporal.Api.Compute.V1.ComputeConfigSummary.ScalingGroupsEntry,
    json_name: "scalingGroups",
    map: true
end

defmodule Temporal.Api.Compute.V1.ComputeConfigScalingGroupSummary do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.compute.v1.ComputeConfigScalingGroupSummary",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :task_queue_types, 1,
    repeated: true,
    type: Temporal.Api.Enums.V1.TaskQueueType,
    json_name: "taskQueueTypes",
    enum: true

  field :provider_type, 2, type: :string, json_name: "providerType"
end
