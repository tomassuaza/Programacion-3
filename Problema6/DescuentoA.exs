defmodule DescuentoA do
  def  main do
    antiguedad = Util.ingresar_entero("Ingrese la antiguedad del cliente: ", :entero)
    mensaje = verificar_descuento(antiguedad)
    Util.mostrar_mensaje(mensaje)
  end
  # metodo que verifica el descuento segun antiguedad
  def verificar_descuento(antiguedad) do
    cond do
      antiguedad >= 1 and antiguedad <= 2 -> "Descuento del 10%"
      antiguedad >= 3 and antiguedad <=6 -> "Tiene un descuento del 14%"
      antiguedad >= 6 -> "Tiene un descuento del 17%"
    end
  end
end

DescuentoA.main()
