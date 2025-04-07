Code.require_file("Cliente.ex", __DIR__)
defmodule Estructura do
  def main do
    crear_lista_clientes()
    |> Cliente.escribir_csv("clientes.csv")
  end
  def crear_lista_clientes do
    [
      Cliente.new("Juan", 18, 1.72),
      Cliente.new("Pedro", 25, 1.80),
      Cliente.new("Maria", 30, 1.65),
      Cliente.new("Ana", 22, 1.70)

    ]
  end
end
Estructura.main()
