defmodule Temporal.Api.Enums.V1.EncodingType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ENCODING_TYPE_UNSPECIFIED, 0
  field :ENCODING_TYPE_PROTO3, 1
  field :ENCODING_TYPE_JSON, 2
end

defmodule Temporal.Api.Enums.V1.IndexedValueType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :INDEXED_VALUE_TYPE_UNSPECIFIED, 0
  field :INDEXED_VALUE_TYPE_TEXT, 1
  field :INDEXED_VALUE_TYPE_KEYWORD, 2
  field :INDEXED_VALUE_TYPE_INT, 3
  field :INDEXED_VALUE_TYPE_DOUBLE, 4
  field :INDEXED_VALUE_TYPE_BOOL, 5
  field :INDEXED_VALUE_TYPE_DATETIME, 6
  field :INDEXED_VALUE_TYPE_KEYWORD_LIST, 7
end

defmodule Temporal.Api.Enums.V1.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :SEVERITY_HIGH, 1
  field :SEVERITY_MEDIUM, 2
  field :SEVERITY_LOW, 3
end

defmodule Temporal.Api.Enums.V1.CallbackState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CALLBACK_STATE_UNSPECIFIED, 0
  field :CALLBACK_STATE_STANDBY, 1
  field :CALLBACK_STATE_SCHEDULED, 2
  field :CALLBACK_STATE_BACKING_OFF, 3
  field :CALLBACK_STATE_FAILED, 4
  field :CALLBACK_STATE_SUCCEEDED, 5
  field :CALLBACK_STATE_BLOCKED, 6
end

defmodule Temporal.Api.Enums.V1.PendingNexusOperationState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PENDING_NEXUS_OPERATION_STATE_UNSPECIFIED, 0
  field :PENDING_NEXUS_OPERATION_STATE_SCHEDULED, 1
  field :PENDING_NEXUS_OPERATION_STATE_BACKING_OFF, 2
  field :PENDING_NEXUS_OPERATION_STATE_STARTED, 3
  field :PENDING_NEXUS_OPERATION_STATE_BLOCKED, 4
end

defmodule Temporal.Api.Enums.V1.NexusOperationCancellationState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :NEXUS_OPERATION_CANCELLATION_STATE_UNSPECIFIED, 0
  field :NEXUS_OPERATION_CANCELLATION_STATE_SCHEDULED, 1
  field :NEXUS_OPERATION_CANCELLATION_STATE_BACKING_OFF, 2
  field :NEXUS_OPERATION_CANCELLATION_STATE_SUCCEEDED, 3
  field :NEXUS_OPERATION_CANCELLATION_STATE_FAILED, 4
  field :NEXUS_OPERATION_CANCELLATION_STATE_TIMED_OUT, 5
  field :NEXUS_OPERATION_CANCELLATION_STATE_BLOCKED, 6
end

defmodule Temporal.Api.Enums.V1.WorkflowRuleActionScope do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :WORKFLOW_RULE_ACTION_SCOPE_UNSPECIFIED, 0
  field :WORKFLOW_RULE_ACTION_SCOPE_WORKFLOW, 1
  field :WORKFLOW_RULE_ACTION_SCOPE_ACTIVITY, 2
end

defmodule Temporal.Api.Enums.V1.ApplicationErrorCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :APPLICATION_ERROR_CATEGORY_UNSPECIFIED, 0
  field :APPLICATION_ERROR_CATEGORY_BENIGN, 1
end
