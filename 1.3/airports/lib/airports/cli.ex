defmodule Airports.CLI do
  @default_code "KDTO"

  def main(argv) do
    argv
    |> parse_args
    |> process
  end

  def parse_args(argv) do
    parse = OptionParser.parse(argv, switches: [ help: :boolean], aliases: [ h: :help ])
    case parse do
      { [ help: true ], _, _ }
        -> :help

      { _, [ code ] , _}
        -> { code }

      { _, _, _ }
        ->  { @default_code }
    end
  end

  def process(:help) do
    IO.puts """
      usage: airports [ code | #{@default_code} ]
    """
    System.halt(0)
  end

  def process({code}) do
    Airports.WeatherGov.fetch(code)
    |> decode_response
    |> Airports.Print.print_info(["weather", "temperature_string", "relative_humidity"])
  end

  def decode_response({:ok, body}), do: body
  def decode_response({:error, error}) do
    IO.puts "Error fetch from Weather.gov"
    System.halt(2)
  end
end
