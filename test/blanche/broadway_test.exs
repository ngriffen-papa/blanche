defmodule BlancheBroadwayTest do
  use ExUnit.Case, async: true

  test "test message" do
    ref = Broadway.test_message(Blanche.Broadway, "1")
    assert_receive {:ack, ^ref, [%{data: {"1", 2}}], []}
  end
end
