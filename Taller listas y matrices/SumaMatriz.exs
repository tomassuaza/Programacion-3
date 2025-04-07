defmodule SumaMatriz do
  def suma_fila([]), do: 0
  def suma_fila([h | t]) do
    h + suma_fila(t)
  end
  def suma_matriz([]), do: 0
  def suma_matriz([h | t]) do
    suma_fila(h) + suma_matriz(t)
  end
  def main do
    IO.puts("Sumando los elementos de una matriz")
    IO.puts("Ingrese la matriz (filas separadas por punto y coma, elementos separados por comas):")
    input = IO.gets("") |> String.trim()
    matriz = String.split(input, ";") |> Enum.map(fn fila ->
      String.split(fila, ",") |> Enum.map(&String.to_integer/1)
    end)
    suma = SumaMatriz.suma_matriz(matriz)
    IO.puts("Suma de los elementos de la matriz: #{suma}")
  end
end
SumaMatriz.main()
