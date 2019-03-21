defmodule MathRacer.Coordinator do
  def loop(results \\ [], results_expected) do
    receive do
      {:ok, sum, time} when is_number(sum) and is_number(time) ->
        IO.puts("It took #{time} microseconds to get the result: #{sum}")
        new_results = [time | results]
        if results_expected == Enum.count(new_results) do
          send self(), :exit
        end
        loop(new_results, results_expected)
      :exit ->
        average = Enum.sum(results) / Enum.count(results)
        IO.puts("The average time was #{average} microseconds")
      _ ->
        loop(results, results_expected)
    end
  end
end
