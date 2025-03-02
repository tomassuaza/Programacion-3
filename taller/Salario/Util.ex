defmodule Util do
  defp ingresar_con_validacion(mensaje, parser, tipo_dato) do
    try do
      mensaje
      |> ingresar_con_consola()
      |> String.trim()
      |> parser.()
    rescue
      ArgumentError ->
        mostrar_error("Error: Debe ingresar un número #{tipo_dato}.")
        ingresar_con_validacion(mensaje, parser, tipo_dato)
    end
  end

  def ingresar(mensaje, :texto) do
    mensaje
    |> ingresar_con_consola()
    |> String.trim()
  end

  def ingresar(mensaje, :entero) do
    ingresar_con_validacion(mensaje, &String.to_integer/1, "entero")
  end

  def ingresar(mensaje, :real) do
    ingresar_con_validacion(mensaje, &String.to_float/1, "real")
  end

  def mostrar_mensaje(mensaje) do
    IO.puts(mensaje)
  end

  def mostrar_error(mensaje) do
    IO.puts("\e[31m#{mensaje}\e[0m") 
  end

  defp ingresar_con_consola(mensaje) do
    IO.write(mensaje <> " ")
    IO.gets("")
  end
end
