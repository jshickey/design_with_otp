defmodule SomeTest do
  use ExUnit.Case

  alias Some

  @moduletag :capture_log

  doctest Some

  test "module exists" do
    assert is_list(Some.module_info())
  end
end
