defmodule Ok do
  def ok!(f) do
    case f do
      {:ok, data} ->
        data
      {:error, message} ->
        raise "Failed function"
    end
  end
end
