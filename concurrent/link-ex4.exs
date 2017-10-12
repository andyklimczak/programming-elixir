defmodule Ex1 do
  def send_message(parent) do
    raise "Giving up"
    send parent, "message from child"
    exit :boom
  end

  def receive_message do
    receive do
      msg ->
        IO.puts "MESSAGE RECEIVED: #{inspect msg}"
    after 1000 ->
      IO.puts "no more messages"
    end
    #receive_message
  end

  def run do
    Process.flag(:trap_exit, true)
    spawn_monitor(Ex1, :send_message, [self])
    :timer.sleep 500
    receive_message
  end
end

Ex1.run
