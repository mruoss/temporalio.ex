defmodule Temporal.Api.Sdk.V1.EnhancedStackTrace.SourcesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Temporal.Api.Sdk.V1.StackTraceFileSlice
end

defmodule Temporal.Api.Sdk.V1.EnhancedStackTrace do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :sdk, 1, type: Temporal.Api.Sdk.V1.StackTraceSDKInfo

  field :sources, 2,
    repeated: true,
    type: Temporal.Api.Sdk.V1.EnhancedStackTrace.SourcesEntry,
    map: true

  field :stacks, 3, repeated: true, type: Temporal.Api.Sdk.V1.StackTrace
end

defmodule Temporal.Api.Sdk.V1.StackTraceSDKInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :version, 2, type: :string
end

defmodule Temporal.Api.Sdk.V1.StackTraceFileSlice do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :line_offset, 1, type: :uint32, json_name: "lineOffset"
  field :content, 2, type: :string
end

defmodule Temporal.Api.Sdk.V1.StackTraceFileLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :file_path, 1, type: :string, json_name: "filePath"
  field :line, 2, type: :int32
  field :column, 3, type: :int32
  field :function_name, 4, type: :string, json_name: "functionName"
  field :internal_code, 5, type: :bool, json_name: "internalCode"
end

defmodule Temporal.Api.Sdk.V1.StackTrace do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :locations, 1, repeated: true, type: Temporal.Api.Sdk.V1.StackTraceFileLocation
end
