defmodule Animal do
  def agregar_animal(nuevo_animal, lista) do
    [nuevo_animal | lista]
  end
  def promedio_edad(animales) do
    edades = Enum.map(animales, fn %{edad: edad} -> edad end)
    Enum.sum(edades) / length(edades)
  end
  def filtrar_peso(animales) do
    Enum.filter(animales, fn %{peso: peso} -> peso > 30 end)
  end
end
animales = [
  %{nombre: "leon", edad: 5, peso: 190},
  %{nombre: "tigre", edad: 3, peso: 150},
  %{nombre: "oso", edad: 4, peso: 200}
]
IO.inspect(Animal.agregar_animal(animales, %{nombre: "jirafa", edad: 2, peso: 50}))
IO.inspect(Animal.promedio_edad(animales))
IO.inspect(Animal.filtrar_peso(animales))
