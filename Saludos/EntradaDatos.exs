
defmodule EntradaDatos do
  def main do
    "Ingrese el nombre del empleado"
    |> Util.ingresar_texto()
    |> generar_mensaje()
    |> Util.mostrar_mensaje()
  end
  defp generar_mensaje(nombre) do
    "El nombre del empleado es #{nombre}"
  end
end

EntradaDatos.main()
