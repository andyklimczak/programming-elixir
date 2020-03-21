defmodule Eval do
  def string(s) do
    elem(Code.eval_string(s), 0)
  end
end
