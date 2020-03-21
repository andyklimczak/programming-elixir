defmodule Chop do
  def guess(number, range) do
    median = get_guess(range)
    guess(median, number, range)
  end

  defp guess(guess, num, first..last=range) when guess == num, do: IO.puts num
  defp guess(guess, num, first..last=range) when guess < num do
    IO.puts "Is it #{guess}"
    new_range = guess..last+1
    median = get_guess(new_range)
    guess(median, num, new_range)
  end
  defp guess(guess, num, first..last=range) when guess > num do
    IO.puts "Is it #{guess}"
    new_range = first-1..guess
    median = get_guess(new_range)
    guess(median, num, new_range)
  end

  defp get_guess(first..last=range) do
    div(last + first, 2)
  end
end
