defmodule Temporal.Api.Sdk.V1.WorkflowMetadata do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :definition, 1, type: Temporal.Api.Sdk.V1.WorkflowDefinition
end

defmodule Temporal.Api.Sdk.V1.WorkflowDefinition do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :type, 1, type: :string
  field :description, 2, type: :string

  field :query_definitions, 3,
    repeated: true,
    type: Temporal.Api.Sdk.V1.WorkflowInteractionDefinition,
    json_name: "queryDefinitions"

  field :signal_definitions, 4,
    repeated: true,
    type: Temporal.Api.Sdk.V1.WorkflowInteractionDefinition,
    json_name: "signalDefinitions"

  field :update_definitions, 5,
    repeated: true,
    type: Temporal.Api.Sdk.V1.WorkflowInteractionDefinition,
    json_name: "updateDefinitions"
end

defmodule Temporal.Api.Sdk.V1.WorkflowInteractionDefinition do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :name, 1, type: :string
  field :description, 2, type: :string
end