defmodule Tienda do

  def main do

    inventario = %{mouse: 5, pc: 10, keyboard: 6}

    inventario = Util.actualizar_inventario(inventario, :pc, 5)
    inventario = Util.actualizar_inventario(inventario, :mouse, 2)
    inventario = Util.actualizar_inventario(inventario, :keyboard, 1)
    inventario = Util.actualizar_inventario(inventario, :laptop, 3)

    IO.inspect(inventario)
  end

end

Tienda.main()
