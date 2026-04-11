defmodule Temporal.Api.Nexusservices.Workerservice.V1.ExecuteCommandsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.nexusservices.workerservice.v1.ExecuteCommandsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :commands, 1, repeated: true, type: Temporal.Api.Worker.V1.WorkerCommand
end

defmodule Temporal.Api.Nexusservices.Workerservice.V1.ExecuteCommandsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.nexusservices.workerservice.v1.ExecuteCommandsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :results, 1, repeated: true, type: Temporal.Api.Worker.V1.WorkerCommandResult
end
