defmodule Inverir do
  def invertir([]), do: []
  def invertir([h | t]) do
    invertir(t) ++ [h]
  end
  def main do
    IO.puts("Invirtiendo una lista")
    IO.puts("Ingrese la lista de números separados por comas:")
    input = IO.gets("") |> String.trim()
    lista = String.split(input, ",") |> Enum.map(&String.to_integer/1)
    lista_invertida = Inverir.invertir(lista)
    IO.puts("Lista invertida: #{inspect(lista_invertida)}")
  end
end
Inverir.main()

