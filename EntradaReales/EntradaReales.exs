Code.require_file("Util.ex", __DIR__)
defmodule EntradaReales do
  def main do
    valor_producto =
      "INGRESE EL VALOR DEL PRODUCTO: "
      |> Util.ingresar_entero( :entero)

      porcentaje_descuento =
        "INGRESE EL PORCENTAJE DE DESCUENTO: "
        |> Util.ingresar_real( :real)

        valor_descuento = calcular_valor_descuento(valor_producto, porcentaje_descuento)
        valor_final = calcular_valor_final(valor_producto, valor_descuento)

        generar_mensaje(valor_descuento, valor_final)
        |> Util.mostrar_mensaje()
  end
  def calcular_valor_descuento(valor_producto, porcentaje_descuento) do
    valor_producto * porcentaje_descuento
  end
  def calcular_valor_final(valor_producto, valor_descuento) do
    valor_producto - valor_descuento
  end
  def generar_mensaje(valor_descuento, valor_final) do
    valor_descuento = valor_descuento |> Float.round(1)
    valor_final = valor_final |> Float.round(1)
    "VALOR DESCUENTO: #{valor_descuento} VALOR FINAL: #{valor_final}"
  end


end

EntradaReales.main()
