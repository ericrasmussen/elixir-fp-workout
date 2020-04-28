defmodule WorkoutTest do
  use ExUnit.Case

  test "fold folds (empty list returns the accumulator)" do
    res = Workout.fold("hi there", [], fn (a, b) -> a <> b end)
    expected = "hi there"
    assert res == expected
  end

  test "fold can fold number lists using *" do
    res = Workout.fold(1, [2, 3, 4], fn (a, b) -> a * b end)
    expected = 24
    assert res == expected
  end

  test "append appends" do
    res = Workout.append(3, [1, 2])
    expected = [1, 2, 3]
    assert res == expected
  end

  test "map maps" do
    res = Workout.map([1, 2, 3], fn(a) -> a * 10 end)
    expected = [10, 20, 30]
    assert res == expected
  end

  test "filter filters" do
    res = Workout.filter([1, 2, 3], fn(a) -> a < 3 end)
    expected = [1, 2]
    assert res == expected
  end

  test "sort sorts" do
    res = Workout.insertion_sort([5, -10, 0, 15, 10, -15, -5])
    expected = [-15, -10, -5, 0, 5, 10, 15]
    assert res == expected
  end

  test "any anys...? checking where the predicate is true some of the time" do
    res = Workout.any([1, 2, 3], fn(a) -> a < 3 end)
    assert res == true
  end

  test "any where the predicate fails for all elements" do
    res = Workout.any([1, 2, 3], fn(a) -> a > 10 end)
    assert res == false
  end

  test "all where the predicate holds true" do
    res = Workout.all([1, 2, 3], fn(a) -> a <= 3 end)
    assert res == true
  end

  test "all where the predicate fails" do
    res = Workout.all([1, 2, 3], fn(a) -> a < 3 end)
    assert res == false
  end

  test "get the max value from a list" do
    res = Workout.max([1, 2, 3])
    assert res == 3
  end

  test "get the min value from a list" do
    res = Workout.min([1, 2, 3])
    assert res == 1
  end

  test "get the length of a list" do
    res = Workout.len([1, 2, 3, 4, 5])
    assert res == 5
  end

end
