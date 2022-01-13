defmodule AlexTest do
  use ExUnit.Case
  doctest Alex

  test "greets the world" do
    assert Alex.hello() == :world
  end
end
