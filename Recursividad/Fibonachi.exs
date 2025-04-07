defmodule Fibonachi do
  def fibonachi(0), do: 0
  def fibonachi(1), do: 1
  def fibonachi(n), do: fibonachi(n - 1) + fibonachi(n - 2)

end
IO.puts Fibonachi.fibonachi(10)
