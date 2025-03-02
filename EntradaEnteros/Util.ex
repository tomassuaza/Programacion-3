defmodule Util do
  # Agrupando las definiciones de ingresar/2
  def ingresar(mensaje, :entero) do
    try do
      mensaje
      |> ingresar(:texto)
      |> String.to_integer()
    rescue
      ArgumentError ->
        "Error, Debe ingresar un número entero\n."
        |> mostrar_error()
        mensaje
        |> ingresar(:entero)
    end
  end

  def ingresar(mensaje, :texto) do
    IO.puts(mensaje)
    IO.gets(" ") |> String.trim()
  end

  def mostrar_error(mensaje) do
    IO.puts(mensaje)
  end
  
  def mostrar_mensaje(mensaje) do
    IO.puts(mensaje)
  end
end
