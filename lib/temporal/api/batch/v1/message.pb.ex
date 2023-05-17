defmodule Temporal.Api.Batch.V1.BatchOperationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :job_id, 1, type: :string, json_name: "jobId"
  field :state, 2, type: Temporal.Api.Enums.V1.BatchOperationState, enum: true
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :close_time, 4, type: Google.Protobuf.Timestamp, json_name: "closeTime", deprecated: false
end

defmodule Temporal.Api.Batch.V1.BatchOperationTermination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :details, 1, type: Temporal.Api.Common.V1.Payloads
  field :identity, 2, type: :string
end

defmodule Temporal.Api.Batch.V1.BatchOperationSignal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :signal, 1, type: :string
  field :input, 2, type: Temporal.Api.Common.V1.Payloads
  field :header, 3, type: Temporal.Api.Common.V1.Header
  field :identity, 4, type: :string
end

defmodule Temporal.Api.Batch.V1.BatchOperationCancellation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :identity, 1, type: :string
end

defmodule Temporal.Api.Batch.V1.BatchOperationDeletion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :identity, 1, type: :string
end