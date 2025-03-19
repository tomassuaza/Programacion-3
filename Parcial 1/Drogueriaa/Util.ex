defmodule Util do
  def analizar_ventas(ventas_diarias) do
    if map_size(ventas_diarias) == 0 do
      IO.inspect({0, 0, "No hay datos"})
    else
      ventas = Map.values(ventas_diarias)
      total_ventas = Enum.sum(ventas)
      promedio = total_ventas / length(ventas)
      {dia_mejor_venta, _} = Enum.max_by(ventas_diarias, fn {_k, v} -> v end)

      IO.inspect({total_ventas, promedio, dia_mejor_venta})
    end
  end
end
