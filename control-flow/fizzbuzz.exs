defmodule FizzBuzz do
  def fizzbuzz(n), do: 1..n |> Enum.map(&fb/1)
  defp fb(n) do
    case n do
      current when rem(current, 3) == 0 and rem(current, 5) == 0 ->
        "FizzBuzz"
      current when rem(current, 3) == 0 ->
        "Fizz"
      current when rem(current, 5) == 0 ->
        "Buzz"
      current ->
        current
    end
  end
end
