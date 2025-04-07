defmodule Cadena do
def invertir (cadena) do
  cadena
  |> String.to_charlist()
  |> do_invertir()
  |> to_string()
end
defp do_invertir([]), do: []
defp do_invertir([c | cola]), do:
  do_invertir(cola) ++ [c]

def main do
  IO.puts "Cadena original: "
  cadena = IO.gets "Ingrese una cadena: "
  cadena = String.trim(cadena) # Eliminar el salto de líne
  IO.puts "Cadena invertida: "
  IO.inspect invertir(cadena)
end
end
Cadena.main()
