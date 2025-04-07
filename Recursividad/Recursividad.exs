defmodule MaxFinder do
  # Caso base: Si la lista tiene un solo elemento, ese es el mayor
  def find_max([x]), do: x

  # Caso recursivo: Divide la lista en dos partes y encuentra el máximo de cada una
  def find_max(list) do
    {left, right} = Enum.split(list, div(length(list), 2))  # Divide la lista en dos mitades
    max_left = find_max(left)  # Encuentra el máximo de la izquierda
    max_right = find_max(right)  # Encuentra el máximo de la derecha

    max(max_left, max_right)  # Compara y devuelve el mayor
  end
end

# Ejemplo de uso
IO.puts MaxFinder.find_max([3, 1, 9, 8, 5])  # Debería imprimir 9
