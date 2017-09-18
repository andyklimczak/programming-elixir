defmodule AndyString do
  def center(list) do
    biggest_word = Enum.at(list, -1)
    center_print(list, String.length(biggest_word))
  end

  defp center_print([el], _), do: IO.puts(el)
  defp center_print([head | tail], max) do
    diff = div(max + String.length(head), 2)
    IO.puts String.rjust(head, diff)
    center_print(tail, max)
  end
end
