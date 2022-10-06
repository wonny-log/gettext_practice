defmodule GettextPracticeTest do
  use ExUnit.Case
  doctest GettextPractice

  test "greets the world" do
    assert GettextPractice.hello() == :world
  end
end
