defmodule Temporal.Api.Nexus.V1.Failure.MetadataEntry do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.nexus.v1.Failure.MetadataEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Temporal.Api.Nexus.V1.Failure do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.nexus.v1.Failure",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :message, 1, type: :string
  field :stack_trace, 4, type: :string, json_name: "stackTrace"
  field :metadata, 2, repeated: true, type: Temporal.Api.Nexus.V1.Failure.MetadataEntry, map: true
  field :details, 3, type: :bytes
  field :cause, 5, type: Temporal.Api.Nexus.V1.Failure
end

defmodule Temporal.Api.Nexus.V1.HandlerError do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.nexus.v1.HandlerError",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :error_type, 1, type: :string, json_name: "errorType"
  field :failure, 2, type: Temporal.Api.Nexus.V1.Failure

  field :retry_behavior, 3,
    type: Temporal.Api.Enums.V1.NexusHandlerErrorRetryBehavior,
    json_name: "retryBehavior",
    enum: true
end

defmodule Temporal.Api.Nexus.V1.UnsuccessfulOperationError do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.nexus.v1.UnsuccessfulOperationError",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :operation_state, 1, type: :string, json_name: "operationState"
  field :failure, 2, type: Temporal.Api.Nexus.V1.Failure
end

defmodule Temporal.Api.Nexus.V1.Link do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.nexus.v1.Link",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :url, 1, type: :string
  field :type, 2, type: :string
end

defmodule Temporal.Api.Nexus.V1.StartOperationRequest.CallbackHeaderEntry do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.nexus.v1.StartOperationRequest.CallbackHeaderEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Temporal.Api.Nexus.V1.StartOperationRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.nexus.v1.StartOperationRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

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

  field :links, 7, repeated: true, type: Temporal.Api.Nexus.V1.Link
end

defmodule Temporal.Api.Nexus.V1.CancelOperationRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.nexus.v1.CancelOperationRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :service, 1, type: :string
  field :operation, 2, type: :string
  field :operation_id, 3, type: :string, json_name: "operationId", deprecated: true
  field :operation_token, 4, type: :string, json_name: "operationToken"
end

defmodule Temporal.Api.Nexus.V1.Request.Capabilities do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.nexus.v1.Request.Capabilities",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :temporal_failure_responses, 1, type: :bool, json_name: "temporalFailureResponses"
end

defmodule Temporal.Api.Nexus.V1.Request.HeaderEntry do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.nexus.v1.Request.HeaderEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Temporal.Api.Nexus.V1.Request do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.nexus.v1.Request",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  oneof :variant, 0

  field :header, 1, repeated: true, type: Temporal.Api.Nexus.V1.Request.HeaderEntry, map: true
  field :scheduled_time, 2, type: Google.Protobuf.Timestamp, json_name: "scheduledTime"
  field :capabilities, 100, type: Temporal.Api.Nexus.V1.Request.Capabilities

  field :start_operation, 3,
    type: Temporal.Api.Nexus.V1.StartOperationRequest,
    json_name: "startOperation",
    oneof: 0

  field :cancel_operation, 4,
    type: Temporal.Api.Nexus.V1.CancelOperationRequest,
    json_name: "cancelOperation",
    oneof: 0

  field :endpoint, 10, type: :string
end

defmodule Temporal.Api.Nexus.V1.StartOperationResponse.Sync do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.nexus.v1.StartOperationResponse.Sync",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :payload, 1, type: Temporal.Api.Common.V1.Payload
  field :links, 2, repeated: true, type: Temporal.Api.Nexus.V1.Link
end

defmodule Temporal.Api.Nexus.V1.StartOperationResponse.Async do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.nexus.v1.StartOperationResponse.Async",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :operation_id, 1, type: :string, json_name: "operationId", deprecated: true
  field :links, 2, repeated: true, type: Temporal.Api.Nexus.V1.Link
  field :operation_token, 3, type: :string, json_name: "operationToken"
end

defmodule Temporal.Api.Nexus.V1.StartOperationResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.nexus.v1.StartOperationResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

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
    oneof: 0,
    deprecated: true

  field :failure, 4, type: Temporal.Api.Failure.V1.Failure, oneof: 0
end

defmodule Temporal.Api.Nexus.V1.CancelOperationResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.nexus.v1.CancelOperationResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Temporal.Api.Nexus.V1.Response do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.nexus.v1.Response",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

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

  use Protobuf,
    full_name: "temporal.api.nexus.v1.Endpoint",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :version, 1, type: :int64
  field :id, 2, type: :string
  field :spec, 3, type: Temporal.Api.Nexus.V1.EndpointSpec
  field :created_time, 4, type: Google.Protobuf.Timestamp, json_name: "createdTime"
  field :last_modified_time, 5, type: Google.Protobuf.Timestamp, json_name: "lastModifiedTime"
  field :url_prefix, 6, type: :string, json_name: "urlPrefix"
end

defmodule Temporal.Api.Nexus.V1.EndpointSpec do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.nexus.v1.EndpointSpec",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :description, 2, type: Temporal.Api.Common.V1.Payload
  field :target, 3, type: Temporal.Api.Nexus.V1.EndpointTarget
end

defmodule Temporal.Api.Nexus.V1.EndpointTarget.Worker do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.nexus.v1.EndpointTarget.Worker",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :namespace, 1, type: :string
  field :task_queue, 2, type: :string, json_name: "taskQueue"
end

defmodule Temporal.Api.Nexus.V1.EndpointTarget.External do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.nexus.v1.EndpointTarget.External",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :url, 1, type: :string
end

defmodule Temporal.Api.Nexus.V1.EndpointTarget do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.nexus.v1.EndpointTarget",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  oneof :variant, 0

  field :worker, 1, type: Temporal.Api.Nexus.V1.EndpointTarget.Worker, oneof: 0
  field :external, 2, type: Temporal.Api.Nexus.V1.EndpointTarget.External, oneof: 0
end
