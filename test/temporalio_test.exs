defmodule TemporalioTest do
  use ExUnit.Case
  doctest Temporalio

  test "greets the world" do
    assert Temporalio.hello() == :world
  end
end
