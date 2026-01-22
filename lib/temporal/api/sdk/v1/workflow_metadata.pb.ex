defmodule Temporal.Api.Sdk.V1.WorkflowMetadata do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.sdk.v1.WorkflowMetadata",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :definition, 1, type: Temporal.Api.Sdk.V1.WorkflowDefinition
  field :current_details, 2, type: :string, json_name: "currentDetails"
end

defmodule Temporal.Api.Sdk.V1.WorkflowDefinition do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.sdk.v1.WorkflowDefinition",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :type, 1, type: :string

  field :query_definitions, 2,
    repeated: true,
    type: Temporal.Api.Sdk.V1.WorkflowInteractionDefinition,
    json_name: "queryDefinitions"

  field :signal_definitions, 3,
    repeated: true,
    type: Temporal.Api.Sdk.V1.WorkflowInteractionDefinition,
    json_name: "signalDefinitions"

  field :update_definitions, 4,
    repeated: true,
    type: Temporal.Api.Sdk.V1.WorkflowInteractionDefinition,
    json_name: "updateDefinitions"
end

defmodule Temporal.Api.Sdk.V1.WorkflowInteractionDefinition do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.sdk.v1.WorkflowInteractionDefinition",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :description, 2, type: :string
end
