defmodule Util do
  def mostrar_mensaje(mensaje) do
    IO.puts(mensaje)
  end

  def ingresar(:texto) do
    IO.gets("") |> String.trim()
  end

  def ingresar(:entero) do
    IO.gets("") |> String.trim() |> String.to_integer()
  end

  def ingresar(:real) do
    IO.gets("") |> String.trim() |> String.to_float()
  end

  # Sobrecarga para ingresar con mensaje
  def ingresar(mensaje, tipo) do
    IO.write(mensaje)
    ingresar(tipo)
  end
end
