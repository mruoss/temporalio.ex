defmodule Temporal.Api.Nexusoperation.V1.CallbackInfo.OperationCompleted do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.nexusoperation.v1.CallbackInfo.OperationCompleted",
    protoc_gen_elixir_version: "0.16.1",
    syntax: :proto3
end

defmodule Temporal.Api.Nexusoperation.V1.CallbackInfo.Trigger do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.nexusoperation.v1.CallbackInfo.Trigger",
    protoc_gen_elixir_version: "0.16.1",
    syntax: :proto3

  oneof :variant, 0

  field :operation_completed, 1,
    type: Temporal.Api.Nexusoperation.V1.CallbackInfo.OperationCompleted,
    json_name: "operationCompleted",
    oneof: 0
end

defmodule Temporal.Api.Nexusoperation.V1.CallbackInfo do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.nexusoperation.v1.CallbackInfo",
    protoc_gen_elixir_version: "0.16.1",
    syntax: :proto3

  field :trigger, 1, type: Temporal.Api.Nexusoperation.V1.CallbackInfo.Trigger
  field :info, 2, type: Temporal.Api.Callback.V1.CallbackInfo
end

defmodule Temporal.Api.Nexusoperation.V1.OnConflictOptions do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.nexusoperation.v1.OnConflictOptions",
    protoc_gen_elixir_version: "0.16.1",
    syntax: :proto3

  field :attach_request_id, 1, type: :bool, json_name: "attachRequestId"
  field :attach_completion_callbacks, 2, type: :bool, json_name: "attachCompletionCallbacks"
  field :attach_links, 3, type: :bool, json_name: "attachLinks"
end
