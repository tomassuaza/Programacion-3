defmodule Util do
  def evaluar(calificaciones, nombre) do
    case Map.get(calificaciones, nombre) do
      nil ->
        IO.inspect({0, "No encontrado"})

      x ->
        promedio = Enum.sum(x) / length(x)
        promedio_redondeado = Float.round(promedio, 1)

        estado = if promedio_redondeado >= 6, do: "Aprobado", else: "Reprobado"

        IO.inspect({promedio_redondeado, estado})
    end
  end
end
