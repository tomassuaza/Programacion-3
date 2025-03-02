defmodule libreria do
  def main do
    titulo_libro =
      "Ingrese el título del libro: "
      |> util.ingresar_texto(:texto)

    unidades_disponibles =
        "Ingrese la cantidad de unidades disponibles: "
        |> Util.ingresar_entero(:entero)


    precio_unitario =
        "Ingrese el precio unitario: "
        |> Util.ingresar_real(:real)


    valor_total = calcular_valor_total(precio_unitario, unidades(_disponibles))

    generar_mensaje(titulo, ibro, unidades_disponibles, valor_total)
      |> Util.mostrar_mensaje()

  end

  defp calcular(_valor_total(precio(unitario, unidades_disponibles))) do
    precio(unitario * unidades_disponibles)
  end

  defp generar_mensaje(titulo_libro, unidades_disponibles, valor_total) do
    "El libro #{titulo_libro} tiene #{unidades_disponibles} unidades disponibles y su valor total es de $#{valor_total}."
  end
end

Libreria.main()
