defmodule Spawn2 do
  def greet do
    receive do
      {sender, msg} ->
        send sender, { :ok, "hello #{msg}" }
        greet
    end
  end
end

pid = spawn(Spawn2, :greet, [])
send pid, {self, "world"}

receive do
  {:ok, message} ->
    IO.puts message
end

send pid, {self, "kermit"}
receive do
  {:ok, message} ->
    IO.puts message
  after 500 ->
    IO.puts "the greeter has gone away"
end
