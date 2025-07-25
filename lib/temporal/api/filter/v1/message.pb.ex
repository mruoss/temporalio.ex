defmodule Temporal.Api.Filter.V1.WorkflowExecutionFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workflow_id, 1, type: :string, json_name: "workflowId"
  field :run_id, 2, type: :string, json_name: "runId"
end

defmodule Temporal.Api.Filter.V1.WorkflowTypeFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Temporal.Api.Filter.V1.StartTimeFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :earliest_time, 1, type: Google.Protobuf.Timestamp, json_name: "earliestTime"
  field :latest_time, 2, type: Google.Protobuf.Timestamp, json_name: "latestTime"
end

defmodule Temporal.Api.Filter.V1.StatusFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :status, 1, type: Temporal.Api.Enums.V1.WorkflowExecutionStatus, enum: true
end
