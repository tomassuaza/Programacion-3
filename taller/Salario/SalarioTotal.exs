defmodule SalarioTotal do
  def main do
    nombre = "Ingrese el nombre del empleado: "
    |> Util.ingresar(:texto)

    salario_base = "Ingresar salario base: "
    |> Util.ingresar(:entero)

    horas_extras = "Ingresar horas extras trabajadas: "
    |> Util.ingresar(:entero)

    salario_total = calcular_salario_total(salario_base, horas_extras)

    generar_mensaje(nombre, salario_total)
    |> Util.mostrar_mensaje()
  end

  defp calcular_salario_total(salario_base, horas_extras) do
    pago_por_hora = salario_base / 30 / 8
    pago_horas_extras = horas_extras * pago_por_hora * 1.5
    salario_base + pago_horas_extras
  end

  defp generar_mensaje(nombre, salario_total) do
    "El salario total de #{nombre} es de $#{salario_total}"
  end
end

SalarioTotal.main()
