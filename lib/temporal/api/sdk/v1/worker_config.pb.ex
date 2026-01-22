defmodule Temporal.Api.Sdk.V1.WorkerConfig.SimplePollerBehavior do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.sdk.v1.WorkerConfig.SimplePollerBehavior",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :max_pollers, 1, type: :int32, json_name: "maxPollers"
end

defmodule Temporal.Api.Sdk.V1.WorkerConfig.AutoscalingPollerBehavior do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.sdk.v1.WorkerConfig.AutoscalingPollerBehavior",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :min_pollers, 1, type: :int32, json_name: "minPollers"
  field :max_pollers, 2, type: :int32, json_name: "maxPollers"
  field :initial_pollers, 3, type: :int32, json_name: "initialPollers"
end

defmodule Temporal.Api.Sdk.V1.WorkerConfig do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.sdk.v1.WorkerConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  oneof :poller_behavior, 0

  field :workflow_cache_size, 1, type: :int32, json_name: "workflowCacheSize"

  field :simple_poller_behavior, 2,
    type: Temporal.Api.Sdk.V1.WorkerConfig.SimplePollerBehavior,
    json_name: "simplePollerBehavior",
    oneof: 0

  field :autoscaling_poller_behavior, 3,
    type: Temporal.Api.Sdk.V1.WorkerConfig.AutoscalingPollerBehavior,
    json_name: "autoscalingPollerBehavior",
    oneof: 0
end
