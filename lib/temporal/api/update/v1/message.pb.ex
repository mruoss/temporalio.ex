defmodule Temporal.Api.Update.V1.WaitPolicy do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :lifecycle_stage, 1,
    type: Temporal.Api.Enums.V1.UpdateWorkflowExecutionLifecycleStage,
    json_name: "lifecycleStage",
    enum: true
end

defmodule Temporal.Api.Update.V1.UpdateRef do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :workflow_execution, 1,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "workflowExecution"

  field :update_id, 2, type: :string, json_name: "updateId"
end

defmodule Temporal.Api.Update.V1.Outcome do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  oneof :value, 0

  field :success, 1, type: Temporal.Api.Common.V1.Payloads, oneof: 0
  field :failure, 2, type: Temporal.Api.Failure.V1.Failure, oneof: 0
end

defmodule Temporal.Api.Update.V1.Meta do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :update_id, 1, type: :string, json_name: "updateId"
  field :identity, 2, type: :string
end

defmodule Temporal.Api.Update.V1.Input do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :header, 1, type: Temporal.Api.Common.V1.Header
  field :name, 2, type: :string
  field :args, 3, type: Temporal.Api.Common.V1.Payloads
end

defmodule Temporal.Api.Update.V1.Request do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :meta, 1, type: Temporal.Api.Update.V1.Meta
  field :input, 2, type: Temporal.Api.Update.V1.Input
end

defmodule Temporal.Api.Update.V1.Rejection do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :rejected_request_message_id, 1, type: :string, json_name: "rejectedRequestMessageId"

  field :rejected_request_sequencing_event_id, 2,
    type: :int64,
    json_name: "rejectedRequestSequencingEventId"

  field :rejected_request, 3, type: Temporal.Api.Update.V1.Request, json_name: "rejectedRequest"
  field :failure, 4, type: Temporal.Api.Failure.V1.Failure
end

defmodule Temporal.Api.Update.V1.Acceptance do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :accepted_request_message_id, 1, type: :string, json_name: "acceptedRequestMessageId"

  field :accepted_request_sequencing_event_id, 2,
    type: :int64,
    json_name: "acceptedRequestSequencingEventId"

  field :accepted_request, 3, type: Temporal.Api.Update.V1.Request, json_name: "acceptedRequest"
end

defmodule Temporal.Api.Update.V1.Response do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :meta, 1, type: Temporal.Api.Update.V1.Meta
  field :outcome, 2, type: Temporal.Api.Update.V1.Outcome
end