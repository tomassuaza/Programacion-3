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

  def ingresar(mensaje, :boolean) do
    valor =
      mensaje
      |> ingresar(:texto)
      |> String.downcase()

    Enum.member?(["si", "sí", "s"], valor)
  end

  def ingresar(mensaje, tipo) do
    IO.write(mensaje)
    ingresar(tipo)
  end
end
