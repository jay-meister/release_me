defmodule ReleaseMeTest do
  use ExUnit.Case
  doctest ReleaseMe

  test "greets the world" do
    assert ReleaseMe.hello() == :world
  end
end
