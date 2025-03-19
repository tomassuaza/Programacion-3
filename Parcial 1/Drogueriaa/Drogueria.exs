defmodule Drogueria do
  def main do

    ventas_diarias = %{dia1: 250000, dia2: 650000, dia3: 550000, dia4: 780000, dia5: 900000}
    _ventas = Util.analizar_ventas(ventas_diarias)



  end
end

Drogueria.main()
