defmodule Pares do
  def contar_pares([]), do: 0
  def contar_pares([h | t]) do
    if rem(h, 2) == 0 do
      1 + contar_pares(t)
    else
      contar_pares(t)
    end
  end

def main do
  IO.puts("Contando números pares en una lista")
  IO.puts("Ingrese la lista de números separados por comas:")
  input = IO.gets("") |> String.trim()
  lista = String.split(input, ",") |> Enum.map(&String.to_integer/1)
  cantidad_pares = Pares.contar_pares(lista)
  IO.puts("Cantidad de números pares: #{cantidad_pares}")
end
end
Pares.main()
