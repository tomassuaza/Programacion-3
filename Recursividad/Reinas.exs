defmodule NReinas do
  def resolver(n), do: colocar_reinas(n, 0, [])

  defp colocar_reinas(n, fila, tablero) when fila == n, do: [Enum.reverse(tablero)]

  defp colocar_reinas(n, fila, tablero) do
    for col <- 0..(n - 1),
        seguro?(fila, col, tablero),
        into: [],
        do: colocar_reinas(n, fila + 1, [{fila, col} | tablero])
  end

  defp seguro?(fila, col, tablero) do
    Enum.all?(tablero, fn {f, c} ->
      c != col and abs(f - fila) != abs(c - col) end)
  end
end
IO.inspect NReinas.resolver(4)  # Para un tablero de 4x4
