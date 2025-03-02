Code.require_file("Util.ex", __DIR__)
defmodule EntradaEnteros do
  def main do
      valor_total = "Ingresar valor total de la factura: "
      |> Util.ingresar( :entero)

      valor_entregado = "Ingresar valor entregado por el cliente: "
      |> Util.ingresar( :entero)

      calcular_devuelta(valor_entregado, valor_total)
      |> generar_mensaje()
      |> Util.mostrar_mensaje()
  end
  defp calcular_devuelta(valor_entregado, valor_total) do
    valor_entregado - valor_total
  end
  defp generar_mensaje(devuelta) do
    "El valor a devolver es: #{devuelta}"
  end
end
EntradaEnteros.main()
