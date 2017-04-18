defmodule MyList do
  def caesar(word, n), do: build(word, n)

  defp build([head], n), do: [add_to_letter(head, n)]
  defp build([head | tail], n) do
    [add_to_letter(head, n)] ++ build(tail, n)
  end

  defp add_to_letter(letter, n), do: add(letter, n)

  defp add(letter, n) when letter + n > 122 do
    letter + n - 26
  end
  defp add(letter, n), do: letter + n

end
