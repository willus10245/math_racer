defmodule MathRacer.Adder do
  def loop do
    receive do
      {sender_pid, {:add, [a, b]}, start_time} ->
        send(sender_pid, add(a, b, start_time))
      _ ->
        :error
    end
  end

  def add(a, b, start_time) when is_number(a) and is_number(b) do
    {:ok, a + b, :timer.now_diff(:erlang.timestamp(), start_time)}
  end
end
