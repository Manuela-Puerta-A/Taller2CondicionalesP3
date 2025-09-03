  defmodule MainPositivo do


  @moduledoc """
  modulo principla para poder ejecutar y realizar las operaciones y la logica necesaria,
  utilizando los datos traidos desde java
  """
    @doc """
   """
     def main do
    numero = Util.input_data("Ingrese un numero ")
    numero =String.to_integer(numero)

    if numero > 0  do
      mensaje="el numero es #{numero} y es positivo"
      Util.show_message(mensaje)
    else
      mensaje="el numero es #{numero} y es negativo"
      Util.show_message(mensaje)
    end

  end

  end
MainPositivo.main()
