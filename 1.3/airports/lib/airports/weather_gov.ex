defmodule Airports.WeatherGov do

	@url Application.get_env(:airports, :weather_gov_url)

  def fetch(code) do
    airport_url(code)
    |> HTTPoison.get
    |> handle_response
  end

  def airport_url(code) do
    "#{@url}/xml/current_obs/#{code}.xml"
  end

  def handle_response({:ok, %{status_code: 200, body: body}}) do
    {doc, _ } = body
    |> :binary.bin_to_list
    |> :xmerl_scan.string
    {:ok, doc}
  end
end
