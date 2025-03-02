defmodule Peaje do
  def main do

    placa_vehiculo = "Ingrese la placa del vehículo: "
    |> Util.ingresar_texto(:texto)

    tipo_vehiculo = Util.ingresar_tipo_vehiculo()

    peso_vehiculo_toneladas =
      if tipo_vehiculo == :camion do
        "ingrese el peso del vehiculo en toneladas: "
        |> Util.ingresar_real(:real)
      else
        0.0
      end

    tarifa =
      case tipo_vehiculo do
         :carro -> 10000
         :moto -> 5000
         :camion -> 20000 + peso_vehiculo_toneladas * 2000
      end

    IO.puts("Vehículo #{placa_vehiculo} (#{tipo_vehiculo}) debe pagar $#{tarifa}")
  end
end
Peaje.main()
