defmodule Estructura do
  def main do
    Cliente.ingresar_varios("\nIngrese los datos del cliente: ")
    |> generar_mensaje_clientes()
    |> Util.mostrar_mensaje()
  end

  defp generar_mensaje(cliente) do
    altura = cliente.altura |> Float.round(2)

    "Hola #{cliente.nombre}, tu edad es de #{cliente.edad} años y " <>
      "tienes una altura de #{altura}\n"
  end

  defp generar_mensaje_clientes(lista_clientes) do
    lista_clientes
    |> Enum.map(&generar_mensaje/1)
    |> Enum.join()
  end
end

Estructura.main()
