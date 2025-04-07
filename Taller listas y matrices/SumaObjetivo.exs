defmodule SumaObjetivo do

  def encontrar_combinaciones(lista, objetivo) do
    buscar_combinaciones(lista, objetivo, [])
  end

  defp buscar_combinaciones(_, 0, combinacion), do: [Enum.reverse(combinacion)]

  defp buscar_combinaciones([], _objetivo, _combinacion), do: []

  defp buscar_combinaciones([h | t], objetivo, combinacion) do
    con_h = buscar_combinaciones(t, objetivo - h, [h | combinacion])
    sin_h = buscar_combinaciones(t, objetivo, combinacion)
    con_h ++ sin_h
  end

  def main do
    IO.puts("Ingrese la lista de números separados por comas:")
    input = IO.gets("") |> String.trim()
    lista = String.split(input, ",")
    |> Enum.map(&String.trim/1)
    |> Enum.map(&String.to_integer/1)

    IO.puts("Ingrese el número objetivo:")
    objetivo = IO.gets("") |> String.trim() |> String.to_integer()

    combinaciones = encontrar_combinaciones(lista, objetivo)

    if combinaciones == [] do
      IO.puts("No se encontró ninguna combinación que sume #{objetivo}.")
    else
      IO.puts("Se encontraron las siguientes combinaciones que suman #{objetivo}:")
      Enum.each(combinaciones, fn c -> IO.inspect(c) end)
    end
  end
end

SumaObjetivo.main()
