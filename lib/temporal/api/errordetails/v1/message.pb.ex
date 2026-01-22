defmodule Temporal.Api.Errordetails.V1.NotFoundFailure do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.errordetails.v1.NotFoundFailure",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :current_cluster, 1, type: :string, json_name: "currentCluster"
  field :active_cluster, 2, type: :string, json_name: "activeCluster"
end

defmodule Temporal.Api.Errordetails.V1.WorkflowExecutionAlreadyStartedFailure do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.errordetails.v1.WorkflowExecutionAlreadyStartedFailure",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :start_request_id, 1, type: :string, json_name: "startRequestId"
  field :run_id, 2, type: :string, json_name: "runId"
end

defmodule Temporal.Api.Errordetails.V1.NamespaceNotActiveFailure do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.errordetails.v1.NamespaceNotActiveFailure",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :namespace, 1, type: :string
  field :current_cluster, 2, type: :string, json_name: "currentCluster"
  field :active_cluster, 3, type: :string, json_name: "activeCluster"
end

defmodule Temporal.Api.Errordetails.V1.NamespaceUnavailableFailure do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.errordetails.v1.NamespaceUnavailableFailure",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :namespace, 1, type: :string
end

defmodule Temporal.Api.Errordetails.V1.NamespaceInvalidStateFailure do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.errordetails.v1.NamespaceInvalidStateFailure",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :namespace, 1, type: :string
  field :state, 2, type: Temporal.Api.Enums.V1.NamespaceState, enum: true

  field :allowed_states, 3,
    repeated: true,
    type: Temporal.Api.Enums.V1.NamespaceState,
    json_name: "allowedStates",
    enum: true
end

defmodule Temporal.Api.Errordetails.V1.NamespaceNotFoundFailure do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.errordetails.v1.NamespaceNotFoundFailure",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :namespace, 1, type: :string
end

defmodule Temporal.Api.Errordetails.V1.NamespaceAlreadyExistsFailure do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.errordetails.v1.NamespaceAlreadyExistsFailure",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Temporal.Api.Errordetails.V1.ClientVersionNotSupportedFailure do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.errordetails.v1.ClientVersionNotSupportedFailure",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :client_version, 1, type: :string, json_name: "clientVersion"
  field :client_name, 2, type: :string, json_name: "clientName"
  field :supported_versions, 3, type: :string, json_name: "supportedVersions"
end

defmodule Temporal.Api.Errordetails.V1.ServerVersionNotSupportedFailure do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.errordetails.v1.ServerVersionNotSupportedFailure",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :server_version, 1, type: :string, json_name: "serverVersion"

  field :client_supported_server_versions, 2,
    type: :string,
    json_name: "clientSupportedServerVersions"
end

defmodule Temporal.Api.Errordetails.V1.CancellationAlreadyRequestedFailure do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.errordetails.v1.CancellationAlreadyRequestedFailure",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Temporal.Api.Errordetails.V1.QueryFailedFailure do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.errordetails.v1.QueryFailedFailure",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :failure, 1, type: Temporal.Api.Failure.V1.Failure
end

defmodule Temporal.Api.Errordetails.V1.PermissionDeniedFailure do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.errordetails.v1.PermissionDeniedFailure",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :reason, 1, type: :string
end

defmodule Temporal.Api.Errordetails.V1.ResourceExhaustedFailure do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.errordetails.v1.ResourceExhaustedFailure",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :cause, 1, type: Temporal.Api.Enums.V1.ResourceExhaustedCause, enum: true
  field :scope, 2, type: Temporal.Api.Enums.V1.ResourceExhaustedScope, enum: true
end

defmodule Temporal.Api.Errordetails.V1.SystemWorkflowFailure do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.errordetails.v1.SystemWorkflowFailure",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :workflow_execution, 1,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "workflowExecution"

  field :workflow_error, 2, type: :string, json_name: "workflowError"
end

defmodule Temporal.Api.Errordetails.V1.WorkflowNotReadyFailure do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.errordetails.v1.WorkflowNotReadyFailure",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Temporal.Api.Errordetails.V1.NewerBuildExistsFailure do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.errordetails.v1.NewerBuildExistsFailure",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :default_build_id, 1, type: :string, json_name: "defaultBuildId"
end

defmodule Temporal.Api.Errordetails.V1.MultiOperationExecutionFailure.OperationStatus do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.errordetails.v1.MultiOperationExecutionFailure.OperationStatus",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :code, 1, type: :int32
  field :message, 2, type: :string
  field :details, 3, repeated: true, type: Google.Protobuf.Any
end

defmodule Temporal.Api.Errordetails.V1.MultiOperationExecutionFailure do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.errordetails.v1.MultiOperationExecutionFailure",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :statuses, 1,
    repeated: true,
    type: Temporal.Api.Errordetails.V1.MultiOperationExecutionFailure.OperationStatus
end

defmodule Temporal.Api.Errordetails.V1.ActivityExecutionAlreadyStartedFailure do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.errordetails.v1.ActivityExecutionAlreadyStartedFailure",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :start_request_id, 1, type: :string, json_name: "startRequestId"
  field :run_id, 2, type: :string, json_name: "runId"
end
