defmodule MathRacer do
  def race(num_of_adders) when is_integer(num_of_adders) do
    range = 1..num_of_adders

    coordinator_pid =
      spawn(MathRacer.Coordinator, :loop, [[], Enum.count(range)])

    range
    |> Enum.each(fn _ ->
      adder_pid = spawn(MathRacer.Adder, :loop, [])
      send(adder_pid, {coordinator_pid, {:add, [1,2]}, :erlang.timestamp()})
    end)
  end
end
