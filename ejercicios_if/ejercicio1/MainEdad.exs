defmodule MainEdad do
  @moduledoc """
  modulo principla para poder ejecutar y realizar las operaciones y la logica necesaria,
  utilizando los datos traidos desde java
  """
    @doc """
   """
     def main do
    edad = Util.input_data("Ingrese su edad usuario: ")
    edad =String.to_integer(edad)

    if edad >= 18 do
      mensaje="la edad de la persona es #{edad} y es mayor de edad"
      Util.show_message(mensaje)
    else
      mensaje=" la edad de la persona es #{edad} y es menor de edad"
      Util.show_message(mensaje)
    end

  end
end

MainEdad.main()
