# Temporalio

Elixir files generated from Temporal.io's protobuf files using protobuf-elixir.

## Installation

This library is currently not published on hex.pm. You can use it
by adding `temporalio` to your list of dependencies in `mix.exs`
referencing the github repo. Additionally to `temporalio`, you're
gonna need `google_protos`:

```elixir
def deps do
  [
    {:temporalio, github: "mruoss/temporalio.ex", tag: "v1.20.0"},
    {:google_protos, "~> 0.3.0"},
  ]
end
```

## Usage Example

```elixir
{:ok, channel} = GRPC.Stub.connect("localhost:7233")
list_ns_req = %Temporal.Api.Workflowservice.V1.ListNamespacesRequest{}
Temporal.Api.Workflowservice.V1.WorkflowService.Stub.list_namespaces(channel, list_ns_req)
```
