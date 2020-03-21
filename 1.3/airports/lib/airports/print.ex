defmodule Airports.Print do

  import Record, only: [defrecord: 2, extract: 2]

  defrecord :xmlElement, extract(:xmlElement, from_lib: "xmerl/include/xmerl.hrl")
  defrecord :xmlText, extract(:xmlText, from_lib: "xmerl/include/xmerl.hrl")

  def print_info(data, fields) do
    fields
    |> Enum.each(&get_field(&1, data))
  end

  def get_field(field, data) do
    [ element ] = :xmerl_xpath.string('/current_observation/#{field}', data)
    [ text ] =  xmlElement(element, :content)
    value = xmlText(text, :value)
    IO.puts("#{field}: #{to_string(value)}")
  end
end
