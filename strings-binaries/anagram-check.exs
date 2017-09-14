defmodule Anagram do
  def check(l1, l2), do: checkAna(l1, Enum.reverse(l2))
  defp checkAna([head1 | tail1], [head2 | tail2]) do
    head1 == head2 && checkAna(tail1, tail2)
  end
  defp checkAna([], []), do: true
end
