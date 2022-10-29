defmodule Clock do
  @moduledoc false

  #
  # Chapter 1, page 21
  # iex> Clock.start(fn(tick) -> IO.puts "The clock is ticking with #{tick}" end)
  #
  def start(f) do
    run(f,0)
  end

  def run(your_hearts_desire, count) do
    your_hearts_desire.(count)
    new_count = Counter.Core.inc(count)
    :timer.sleep(1000)
    run(your_hearts_desire, new_count)
  end
end
