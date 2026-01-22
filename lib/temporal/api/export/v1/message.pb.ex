defmodule Temporal.Api.Export.V1.WorkflowExecution do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.export.v1.WorkflowExecution",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :history, 1, type: Temporal.Api.History.V1.History
end

defmodule Temporal.Api.Export.V1.WorkflowExecutions do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.export.v1.WorkflowExecutions",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :items, 1, repeated: true, type: Temporal.Api.Export.V1.WorkflowExecution
end
