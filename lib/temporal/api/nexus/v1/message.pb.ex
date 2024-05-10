defmodule Temporal.Api.Nexus.V1.Failure.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Temporal.Api.Nexus.V1.Failure do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :message, 1, type: :string
  field :metadata, 2, repeated: true, type: Temporal.Api.Nexus.V1.Failure.MetadataEntry, map: true
  field :details, 3, type: :bytes
end

defmodule Temporal.Api.Nexus.V1.HandlerError do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :error_type, 1, type: :string, json_name: "errorType"
  field :failure, 2, type: Temporal.Api.Nexus.V1.Failure
end

defmodule Temporal.Api.Nexus.V1.UnsuccessfulOperationError do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :operation_state, 1, type: :string, json_name: "operationState"
  field :failure, 2, type: Temporal.Api.Nexus.V1.Failure
end

defmodule Temporal.Api.Nexus.V1.StartOperationRequest.CallbackHeaderEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Temporal.Api.Nexus.V1.StartOperationRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :service, 1, type: :string
  field :operation, 2, type: :string
  field :request_id, 3, type: :string, json_name: "requestId"
  field :callback, 4, type: :string
  field :payload, 5, type: Temporal.Api.Common.V1.Payload

  field :callback_header, 6,
    repeated: true,
    type: Temporal.Api.Nexus.V1.StartOperationRequest.CallbackHeaderEntry,
    json_name: "callbackHeader",
    map: true
end

defmodule Temporal.Api.Nexus.V1.CancelOperationRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :service, 1, type: :string
  field :operation, 2, type: :string
  field :operation_id, 3, type: :string, json_name: "operationId"
end

defmodule Temporal.Api.Nexus.V1.Request.HeaderEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Temporal.Api.Nexus.V1.Request do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  oneof :variant, 0

  field :header, 1, repeated: true, type: Temporal.Api.Nexus.V1.Request.HeaderEntry, map: true
  field :scheduled_time, 2, type: Google.Protobuf.Timestamp, json_name: "scheduledTime"

  field :start_operation, 3,
    type: Temporal.Api.Nexus.V1.StartOperationRequest,
    json_name: "startOperation",
    oneof: 0

  field :cancel_operation, 4,
    type: Temporal.Api.Nexus.V1.CancelOperationRequest,
    json_name: "cancelOperation",
    oneof: 0
end

defmodule Temporal.Api.Nexus.V1.StartOperationResponse.Sync do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :payload, 1, type: Temporal.Api.Common.V1.Payload
end

defmodule Temporal.Api.Nexus.V1.StartOperationResponse.Async do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :operation_id, 1, type: :string, json_name: "operationId"
end

defmodule Temporal.Api.Nexus.V1.StartOperationResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  oneof :variant, 0

  field :sync_success, 1,
    type: Temporal.Api.Nexus.V1.StartOperationResponse.Sync,
    json_name: "syncSuccess",
    oneof: 0

  field :async_success, 2,
    type: Temporal.Api.Nexus.V1.StartOperationResponse.Async,
    json_name: "asyncSuccess",
    oneof: 0

  field :operation_error, 3,
    type: Temporal.Api.Nexus.V1.UnsuccessfulOperationError,
    json_name: "operationError",
    oneof: 0
end

defmodule Temporal.Api.Nexus.V1.CancelOperationResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"
end

defmodule Temporal.Api.Nexus.V1.Response do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  oneof :variant, 0

  field :start_operation, 1,
    type: Temporal.Api.Nexus.V1.StartOperationResponse,
    json_name: "startOperation",
    oneof: 0

  field :cancel_operation, 2,
    type: Temporal.Api.Nexus.V1.CancelOperationResponse,
    json_name: "cancelOperation",
    oneof: 0
end

defmodule Temporal.Api.Nexus.V1.Endpoint do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :version, 1, type: :int64
  field :id, 2, type: :string
  field :spec, 3, type: Temporal.Api.Nexus.V1.EndpointSpec
  field :created_time, 4, type: Google.Protobuf.Timestamp, json_name: "createdTime"
  field :last_modified_time, 5, type: Google.Protobuf.Timestamp, json_name: "lastModifiedTime"
  field :url_prefix, 6, type: :string, json_name: "urlPrefix"
end

defmodule Temporal.Api.Nexus.V1.EndpointSpec do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :name, 1, type: :string
  field :description, 2, type: Temporal.Api.Common.V1.Payload
  field :target, 3, type: Temporal.Api.Nexus.V1.EndpointTarget
end

defmodule Temporal.Api.Nexus.V1.EndpointTarget.Worker do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :namespace, 1, type: :string
  field :task_queue, 2, type: :string, json_name: "taskQueue"
end

defmodule Temporal.Api.Nexus.V1.EndpointTarget.External do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :url, 1, type: :string
end

defmodule Temporal.Api.Nexus.V1.EndpointTarget do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  oneof :variant, 0

  field :worker, 1, type: Temporal.Api.Nexus.V1.EndpointTarget.Worker, oneof: 0
  field :external, 2, type: Temporal.Api.Nexus.V1.EndpointTarget.External, oneof: 0
end