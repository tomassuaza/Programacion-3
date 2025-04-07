defmodule TransposicionMatriz do

  def transponer([]), do: []
  
  def transponer(matriz) do
    case Enum.all?(matriz, fn fila -> fila == [] end) do
      true -> []
      false ->
        [obtener_primera_columna(matriz) | transponer(obtener_resto_columnas(matriz))]
    end
  end

  def obtener_primera_columna([]), do: []

  def obtener_primera_columna([[h | _t] | resto]) do
    [h | obtener_primera_columna(resto)]
  end

  def obtener_resto_columnas([]), do: []

  def obtener_resto_columnas([[_h | t] | resto]) do
    [t | obtener_resto_columnas(resto)]
  end

  def main do
    IO.puts("Ingrese la matriz (filas separadas por punto y coma, elementos separados por comas):")
    input = IO.gets("") |> String.trim()

    matriz = String.split(input, ";")
    |> Enum.map(fn fila ->
      fila
      |> String.split(",")
      |> Enum.map(&String.trim/1)
      |> Enum.map(&String.to_integer/1)
    end)

    transpuesta = TransposicionMatriz.transponer(matriz)

    IO.puts("Matriz transpuesta:")
    IO.inspect(transpuesta)
  end
end

TransposicionMatriz.main()
