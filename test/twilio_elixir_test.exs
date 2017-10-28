defmodule TwilioElixirTest do
  use ExUnit.Case
  doctest TwilioElixir

  test "greets the world" do
    assert TwilioElixir.hello() == :world
  end
end
