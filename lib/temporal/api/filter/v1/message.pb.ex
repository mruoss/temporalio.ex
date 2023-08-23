defmodule Temporal.Api.Filter.V1.WorkflowExecutionFilter do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :workflow_id, 1, type: :string, json_name: "workflowId"
  field :run_id, 2, type: :string, json_name: "runId"
end

defmodule Temporal.Api.Filter.V1.WorkflowTypeFilter do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :name, 1, type: :string
end

defmodule Temporal.Api.Filter.V1.StartTimeFilter do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :earliest_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "earliestTime",
    deprecated: false

  field :latest_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "latestTime",
    deprecated: false
end

defmodule Temporal.Api.Filter.V1.StatusFilter do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :status, 1, type: Temporal.Api.Enums.V1.WorkflowExecutionStatus, enum: true
end