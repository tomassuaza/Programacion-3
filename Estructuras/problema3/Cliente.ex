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
  def escribir_csv(clientes, archivo) do
    contenido =
      clientes
      |> Enum.map(fn %Cliente{nombre: n, edad: e, altura: a} -> "#{n},#{e},#{a}" end)
      |> Enum.join("\n")

    File.write!(archivo, contenido)
  end
end
