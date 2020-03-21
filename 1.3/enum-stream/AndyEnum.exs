defmodule AndyEnum do
  def all?([], _), do: true
  def all?([head | tail], func) do
    if func.(head) == true do
      all?(tail, func)
    else
      false
    end
  end

  def each([], _), do: []
  def each([head | tail], func), do: [func.(head)] ++ each(tail, func)

  def filter([], _), do: []
  def filter([head | tail], func) do
    if func.(head) == true do
      [head] ++ filter(tail, func)
    else
      filter(tail, func)
    end
  end

  def split(list, n), do: split([], list, n)
  defp split(list1, list2, n) when length(list1) >= n do
    {list1, list2}
  end
  defp split(list1, [head | tail], n) when length(list1) < n do
    split(list1 ++ [head], tail, n)
  end

  def take(list, n), do: take([], list, n)
  defp take(list1, list2, n) when length(list1) >= n, do: list1
  defp take(list1, [head | tail], n) when length(list1) < n do
    take(list1 ++ [head], tail, n)
  end
end
