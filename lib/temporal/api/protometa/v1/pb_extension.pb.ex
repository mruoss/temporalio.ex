defmodule Temporal.Api.Protometa.V1.PbExtension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.16.0"

  extend Google.Protobuf.MethodOptions, :request_header, 7_234_001,
    repeated: true,
    type: Temporal.Api.Protometa.V1.RequestHeaderAnnotation,
    json_name: "requestHeader"
end
