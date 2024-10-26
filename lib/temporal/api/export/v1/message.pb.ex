defmodule Temporal.Api.Export.V1.WorkflowExecution do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :history, 1, type: Temporal.Api.History.V1.History
end

defmodule Temporal.Api.Export.V1.WorkflowExecutions do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :items, 1, repeated: true, type: Temporal.Api.Export.V1.WorkflowExecution
end