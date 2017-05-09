defmodule Max do
  def of([head | tail]), do: of(tail, head)

  defp of([], max), do: max
  defp of([head | tail], max) when head <= max do
    of(tail, max)
  end

  defp of([head | tail], max) when head > max do
    of(tail, head)
  end
end
