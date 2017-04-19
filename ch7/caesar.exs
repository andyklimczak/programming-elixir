defmodule MyList do
  def caesar(word, n), do: build(word, n)

  defp build([head], n), do: [add(head, n)]
  defp build([head | tail], n) do
    [add(head, n)] ++ build(tail, n)
  end

  defp add(letter, n) when letter + n > 122 do
    letter + n - 26
  end
  defp add(letter, n), do: letter + n

end
