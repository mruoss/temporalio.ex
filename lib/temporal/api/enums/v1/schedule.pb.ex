defmodule Temporal.Api.Enums.V1.ScheduleOverlapPolicy do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :SCHEDULE_OVERLAP_POLICY_UNSPECIFIED, 0
  field :SCHEDULE_OVERLAP_POLICY_SKIP, 1
  field :SCHEDULE_OVERLAP_POLICY_BUFFER_ONE, 2
  field :SCHEDULE_OVERLAP_POLICY_BUFFER_ALL, 3
  field :SCHEDULE_OVERLAP_POLICY_CANCEL_OTHER, 4
  field :SCHEDULE_OVERLAP_POLICY_TERMINATE_OTHER, 5
  field :SCHEDULE_OVERLAP_POLICY_ALLOW_ALL, 6
end