defmodule Temporal.Api.Rules.V1.WorkflowRuleAction.ActionActivityPause do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Temporal.Api.Rules.V1.WorkflowRuleAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :variant, 0

  field :activity_pause, 1,
    type: Temporal.Api.Rules.V1.WorkflowRuleAction.ActionActivityPause,
    json_name: "activityPause",
    oneof: 0
end

defmodule Temporal.Api.Rules.V1.WorkflowRuleSpec.ActivityStartingTrigger do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :predicate, 1, type: :string
end

defmodule Temporal.Api.Rules.V1.WorkflowRuleSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :trigger, 0

  field :id, 1, type: :string

  field :activity_start, 2,
    type: Temporal.Api.Rules.V1.WorkflowRuleSpec.ActivityStartingTrigger,
    json_name: "activityStart",
    oneof: 0

  field :visibility_query, 3, type: :string, json_name: "visibilityQuery"
  field :actions, 4, repeated: true, type: Temporal.Api.Rules.V1.WorkflowRuleAction
  field :expiration_time, 5, type: Google.Protobuf.Timestamp, json_name: "expirationTime"
end

defmodule Temporal.Api.Rules.V1.WorkflowRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :spec, 2, type: Temporal.Api.Rules.V1.WorkflowRuleSpec
end
