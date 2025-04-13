defmodule Estructura do
  def main do
    "Ingrese los datos del cliente: "
    |> Cliente.ingresar()
    |> generar_mensaje()
    |> Util.mostrar_mensaje()
  end
  def generar_mensaje(cliente) do
    altura = cliente.altura |> Float.round(2)
    "Hola #{cliente.nombre}, tienes #{cliente.edad} años y mides #{altura} metros."
  end
end
Estructura.main()
