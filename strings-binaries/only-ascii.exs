defmodule Ascii do
  def only([]), do: true
  def only([head | tail]) do
    head in 65..122 and only(tail)
  end
end
