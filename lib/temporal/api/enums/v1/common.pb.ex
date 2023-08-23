defmodule Temporal.Api.Enums.V1.EncodingType do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :ENCODING_TYPE_UNSPECIFIED, 0
  field :ENCODING_TYPE_PROTO3, 1
  field :ENCODING_TYPE_JSON, 2
end

defmodule Temporal.Api.Enums.V1.IndexedValueType do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

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

  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :SEVERITY_UNSPECIFIED, 0
  field :SEVERITY_HIGH, 1
  field :SEVERITY_MEDIUM, 2
  field :SEVERITY_LOW, 3
end