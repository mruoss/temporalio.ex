defmodule Temporal.Api.Query.V1.WorkflowQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :query_type, 1, type: :string, json_name: "queryType"
  field :query_args, 2, type: Temporal.Api.Common.V1.Payloads, json_name: "queryArgs"
  field :header, 3, type: Temporal.Api.Common.V1.Header
end

defmodule Temporal.Api.Query.V1.WorkflowQueryResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :result_type, 1,
    type: Temporal.Api.Enums.V1.QueryResultType,
    json_name: "resultType",
    enum: true

  field :answer, 2, type: Temporal.Api.Common.V1.Payloads
  field :error_message, 3, type: :string, json_name: "errorMessage"
  field :failure, 4, type: Temporal.Api.Failure.V1.Failure
end

defmodule Temporal.Api.Query.V1.QueryRejected do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :status, 1, type: Temporal.Api.Enums.V1.WorkflowExecutionStatus, enum: true
end
