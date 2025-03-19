
defmodule Proyecto do

  def main do

    calificaciones = %{Camilo: [9, 8, 7], Esteban: [7, 7, 8], Max: [9, 6, 4]}

    _Camilo = Util.evaluar(calificaciones, :Camilo)
    _Esteban = Util.evaluar(calificaciones, :Esteban)
    _Max = Util.evaluar(calificaciones, :Max)
    _Juan = Util.evaluar(calificaciones, :Juan)

  end
end

Proyecto.main()
