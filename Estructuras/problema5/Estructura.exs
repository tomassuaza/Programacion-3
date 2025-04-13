defmodule Estructura do
  def main do
    unless File.exists?("clientes.csv") do
      IO.puts("Archivo 'clientes.csv' no encontrado. Vamos a crearlo.")
      crear_csv()
    end

    "clientes.csv"
    |> CSV.leer_csv(&Cliente.convertir_cadena_cliente/1)
    |> Enum.filter(&(&1.edad < 21))
    |> CSV.generar_mensaje_csv(&generar_mensaje/1)
    |> Util.mostrar_mensaje()
  end

  defp generar_mensaje(cliente) do
    altura = Float.round(cliente.altura, 2)
    "Hola #{cliente.nombre}, tu edad es de #{cliente.edad} años y tienes una altura de #{altura}"
  end

  defp crear_csv do
    titulos = "nombre,edad,altura\n"

    clientes =
      1..3
      |> Enum.map(fn _ -> Cliente.ingresar("Ingrese los datos del cliente:") end)

    CSV.escribir_csv(clientes, "clientes.csv", titulos, &cliente_a_cadena/1)
  end

  defp cliente_a_cadena(cliente) do
    "#{cliente.nombre},#{cliente.edad},#{cliente.altura}"
  end
end

Estructura.main()
