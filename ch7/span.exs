defmodule MyList do
  def span(from, to), do: span(from, to, [to])

  defp span(from, _, list = [head | _]) when head <= from, do: list

  defp span(from, to, list = [head | _]) when head > from do
    new_list = [head - 1] ++ list
    span(from, to, new_list)
  end
end
