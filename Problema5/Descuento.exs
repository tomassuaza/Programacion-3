defmodule Descuento do
  def main do
    numero_cedula = Util.ingresar_entero("Ingrese el numero de cedula: ", :entero)


    mensaje = verificar_descuento(numero_cedula)

    IO.puts mensaje
  end

  def verificar_descuento(numero_cedula) do
    case rem(numero_cedula, 1991) do
      0 -> "La cédula #{numero_cedula} es múltiplo de 1991, tiene descuento del 50%."
      _ -> "La cédula #{numero_cedula} no es múltiplo de 1991, no tiene descuento."
    end
  end
end
Descuento.main()
