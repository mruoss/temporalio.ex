defmodule Temporal.Api.Common.V1.DataBlob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :encoding_type, 1,
    type: Temporal.Api.Enums.V1.EncodingType,
    json_name: "encodingType",
    enum: true

  field :data, 2, type: :bytes
end

defmodule Temporal.Api.Common.V1.Payloads do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :payloads, 1, repeated: true, type: Temporal.Api.Common.V1.Payload
end

defmodule Temporal.Api.Common.V1.Payload.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :bytes
end

defmodule Temporal.Api.Common.V1.Payload do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :metadata, 1,
    repeated: true,
    type: Temporal.Api.Common.V1.Payload.MetadataEntry,
    map: true

  field :data, 2, type: :bytes
end

defmodule Temporal.Api.Common.V1.SearchAttributes.IndexedFieldsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Temporal.Api.Common.V1.Payload
end

defmodule Temporal.Api.Common.V1.SearchAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :indexed_fields, 1,
    repeated: true,
    type: Temporal.Api.Common.V1.SearchAttributes.IndexedFieldsEntry,
    json_name: "indexedFields",
    map: true
end

defmodule Temporal.Api.Common.V1.Memo.FieldsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Temporal.Api.Common.V1.Payload
end

defmodule Temporal.Api.Common.V1.Memo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :fields, 1, repeated: true, type: Temporal.Api.Common.V1.Memo.FieldsEntry, map: true
end

defmodule Temporal.Api.Common.V1.Header.FieldsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Temporal.Api.Common.V1.Payload
end

defmodule Temporal.Api.Common.V1.Header do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :fields, 1, repeated: true, type: Temporal.Api.Common.V1.Header.FieldsEntry, map: true
end

defmodule Temporal.Api.Common.V1.WorkflowExecution do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workflow_id, 1, type: :string, json_name: "workflowId"
  field :run_id, 2, type: :string, json_name: "runId"
end

defmodule Temporal.Api.Common.V1.WorkflowType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Temporal.Api.Common.V1.ActivityType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Temporal.Api.Common.V1.RetryPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :initial_interval, 1, type: Google.Protobuf.Duration, json_name: "initialInterval"
  field :backoff_coefficient, 2, type: :double, json_name: "backoffCoefficient"
  field :maximum_interval, 3, type: Google.Protobuf.Duration, json_name: "maximumInterval"
  field :maximum_attempts, 4, type: :int32, json_name: "maximumAttempts"

  field :non_retryable_error_types, 5,
    repeated: true,
    type: :string,
    json_name: "nonRetryableErrorTypes"
end

defmodule Temporal.Api.Common.V1.MeteringMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :nonfirst_local_activity_execution_attempts, 13,
    type: :uint32,
    json_name: "nonfirstLocalActivityExecutionAttempts"
end

defmodule Temporal.Api.Common.V1.WorkerVersionStamp do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :build_id, 1, type: :string, json_name: "buildId"
  field :use_versioning, 3, type: :bool, json_name: "useVersioning"
end

defmodule Temporal.Api.Common.V1.WorkerVersionCapabilities do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :build_id, 1, type: :string, json_name: "buildId"
  field :use_versioning, 2, type: :bool, json_name: "useVersioning"
  field :deployment_series_name, 4, type: :string, json_name: "deploymentSeriesName"
end

defmodule Temporal.Api.Common.V1.ResetOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :target, 0

  field :first_workflow_task, 1,
    type: Google.Protobuf.Empty,
    json_name: "firstWorkflowTask",
    oneof: 0

  field :last_workflow_task, 2,
    type: Google.Protobuf.Empty,
    json_name: "lastWorkflowTask",
    oneof: 0

  field :workflow_task_id, 3, type: :int64, json_name: "workflowTaskId", oneof: 0
  field :build_id, 4, type: :string, json_name: "buildId", oneof: 0

  field :reset_reapply_type, 10,
    type: Temporal.Api.Enums.V1.ResetReapplyType,
    json_name: "resetReapplyType",
    enum: true,
    deprecated: true

  field :current_run_only, 11, type: :bool, json_name: "currentRunOnly"

  field :reset_reapply_exclude_types, 12,
    repeated: true,
    type: Temporal.Api.Enums.V1.ResetReapplyExcludeType,
    json_name: "resetReapplyExcludeTypes",
    enum: true
end

defmodule Temporal.Api.Common.V1.Callback.Nexus.HeaderEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Temporal.Api.Common.V1.Callback.Nexus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :url, 1, type: :string

  field :header, 2,
    repeated: true,
    type: Temporal.Api.Common.V1.Callback.Nexus.HeaderEntry,
    map: true
end

defmodule Temporal.Api.Common.V1.Callback.Internal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data, 1, type: :bytes
end

defmodule Temporal.Api.Common.V1.Callback do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :variant, 0

  field :nexus, 2, type: Temporal.Api.Common.V1.Callback.Nexus, oneof: 0
  field :internal, 3, type: Temporal.Api.Common.V1.Callback.Internal, oneof: 0
  field :links, 100, repeated: true, type: Temporal.Api.Common.V1.Link
end

defmodule Temporal.Api.Common.V1.Link.WorkflowEvent.EventReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :event_id, 1, type: :int64, json_name: "eventId"
  field :event_type, 2, type: Temporal.Api.Enums.V1.EventType, json_name: "eventType", enum: true
end

defmodule Temporal.Api.Common.V1.Link.WorkflowEvent.RequestIdReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :request_id, 1, type: :string, json_name: "requestId"
  field :event_type, 2, type: Temporal.Api.Enums.V1.EventType, json_name: "eventType", enum: true
end

defmodule Temporal.Api.Common.V1.Link.WorkflowEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :reference, 0

  field :namespace, 1, type: :string
  field :workflow_id, 2, type: :string, json_name: "workflowId"
  field :run_id, 3, type: :string, json_name: "runId"

  field :event_ref, 100,
    type: Temporal.Api.Common.V1.Link.WorkflowEvent.EventReference,
    json_name: "eventRef",
    oneof: 0

  field :request_id_ref, 101,
    type: Temporal.Api.Common.V1.Link.WorkflowEvent.RequestIdReference,
    json_name: "requestIdRef",
    oneof: 0
end

defmodule Temporal.Api.Common.V1.Link.BatchJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :job_id, 1, type: :string, json_name: "jobId"
end

defmodule Temporal.Api.Common.V1.Link do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :variant, 0

  field :workflow_event, 1,
    type: Temporal.Api.Common.V1.Link.WorkflowEvent,
    json_name: "workflowEvent",
    oneof: 0

  field :batch_job, 2, type: Temporal.Api.Common.V1.Link.BatchJob, json_name: "batchJob", oneof: 0
end

defmodule Temporal.Api.Common.V1.Priority do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :priority_key, 1, type: :int32, json_name: "priorityKey"
end
