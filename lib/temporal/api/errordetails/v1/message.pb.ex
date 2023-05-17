defmodule Temporal.Api.Errordetails.V1.NotFoundFailure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :current_cluster, 1, type: :string, json_name: "currentCluster"
  field :active_cluster, 2, type: :string, json_name: "activeCluster"
end

defmodule Temporal.Api.Errordetails.V1.WorkflowExecutionAlreadyStartedFailure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_request_id, 1, type: :string, json_name: "startRequestId"
  field :run_id, 2, type: :string, json_name: "runId"
end

defmodule Temporal.Api.Errordetails.V1.NamespaceNotActiveFailure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :current_cluster, 2, type: :string, json_name: "currentCluster"
  field :active_cluster, 3, type: :string, json_name: "activeCluster"
end

defmodule Temporal.Api.Errordetails.V1.NamespaceInvalidStateFailure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespace, 1, type: :string
end

defmodule Temporal.Api.Errordetails.V1.NamespaceAlreadyExistsFailure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Temporal.Api.Errordetails.V1.ClientVersionNotSupportedFailure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :client_version, 1, type: :string, json_name: "clientVersion"
  field :client_name, 2, type: :string, json_name: "clientName"
  field :supported_versions, 3, type: :string, json_name: "supportedVersions"
end

defmodule Temporal.Api.Errordetails.V1.ServerVersionNotSupportedFailure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :server_version, 1, type: :string, json_name: "serverVersion"

  field :client_supported_server_versions, 2,
    type: :string,
    json_name: "clientSupportedServerVersions"
end

defmodule Temporal.Api.Errordetails.V1.CancellationAlreadyRequestedFailure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Temporal.Api.Errordetails.V1.QueryFailedFailure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Temporal.Api.Errordetails.V1.PermissionDeniedFailure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :reason, 1, type: :string
end

defmodule Temporal.Api.Errordetails.V1.ResourceExhaustedFailure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cause, 1, type: Temporal.Api.Enums.V1.ResourceExhaustedCause, enum: true
end

defmodule Temporal.Api.Errordetails.V1.SystemWorkflowFailure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :workflow_execution, 1,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "workflowExecution"

  field :workflow_error, 2, type: :string, json_name: "workflowError"
end

defmodule Temporal.Api.Errordetails.V1.WorkflowNotReadyFailure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end