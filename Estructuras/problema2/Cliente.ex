defmodule Cliente do
  defstruct [nombre: "", edad: 0, altura: 0.0]

  def new(nombre, edad, altura) do
    %Cliente{
      nombre: nombre,
      edad: edad,
      altura: altura
    }
  end

  def ingresar(mensaje) do
    mensaje
    |> Util.mostrar_mensaje()

    nombre = "Ingrese su nombre: "
    |> Util.ingresar(:texto)

    edad = "Ingrese su edad: "
    |> Util.ingresar(:entero)

    altura = "Ingrese su altura: "
    |> Util.ingresar(:real)

    new(nombre, edad, altura)
  end

  def ingresar_varios(mensaje) do
    ingresar_varios(mensaje, [])
  end

  defp ingresar_varios(mensaje, clientes) do
    cliente = ingresar(mensaje)
    nueva_lista = clientes ++ [cliente]

    mas_clientes =
      "\n¿Ingresar más clientes? (s/n): "
      |> Util.ingresar(:boolean)

    case mas_clientes do
      true -> ingresar_varios(mensaje, nueva_lista)
      false -> nueva_lista
    end
  end

  def generar_mensaje_clientes(lista_clientes, parser) do
    lista_clientes
    |> Enum.map(parser)
    |> Enum.join()
  end
  def escribir_csv(clientes, nombre) do
    clientes
    |> generar_mensaje_clientes(&convertir_cliente_linea_csv/1)
    |> (&("nombre, edad, altura\n"<> &1)).() # adiciona los títulos
    |> (&File.write(nombre, &1)).()
    end

    defp convertir_cliente_linea_csv(cliente) do
    "#{cliente.nombre},#{cliente.edad}, #{cliente.altura}"
    end
end
