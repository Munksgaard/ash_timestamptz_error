defmodule AshTimestamptzErrorTest do
  use ExUnit.Case
  doctest AshTimestamptzError

  alias AshTimestamptzError.Foos.Foo

  test "recently created foo should have true `past_bar?`" do
    foo =
      Ash.create!(Foo, %{bar: DateTime.utc_now()})

    assert Ash.get!(Foo, foo.id, load: :past_bar?).past_bar?
  end

  test "recently created foo should have true `past_bar2?`" do
    foo =
      Ash.create!(Foo, %{bar: DateTime.utc_now()})

    assert Ash.get!(Foo, foo.id, load: :past_bar2?).past_bar2?
  end
end
