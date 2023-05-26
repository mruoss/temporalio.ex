# Temporalio

Elixir files generated from [Temporal.io's protobuf files](https://github.com/temporalio/api) using [protobuf-elixir](https://github.com/elixir-protobuf/protobuf).

[![Module Version](https://img.shields.io/hexpm/v/temporalio.svg)](https://hex.pm/packages/temporalio)
[![Last Updated](https://img.shields.io/github/last-commit/mruoss/temporalio.ex.svg)](https://github.com/mruoss/temporalio.ex/commits/main)

[![Upstream Version Check](https://github.com/mruoss/temporalio.ex/actions/workflows/update.yaml/badge.svg)](https://github.com/mruoss/temporalio.ex/actions/workflows/update.yaml)
[![Release Status](https://github.com/mruoss/temporalio.ex/actions/workflows/release.yaml/badge.svg)](https://github.com/mruoss/temporalio.ex/actions/workflows/release.yaml)

[![License](https://img.shields.io/hexpm/l/temporalio.svg)](https://github.com/mruoss/temporalio/blob/main/LICENSE)

## Installation

This library is currently not published on hex.pm. You can use it
by adding `temporalio` to your list of dependencies in `mix.exs`
referencing the github repo. Additionally to `temporalio`, you're
gonna need `google_protos`:

```elixir
def deps do
  [
    {:temporalio, "~> 1.21"},
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
