defmodule Util do
  @moduledoc """
  Utilidades para interacción entre Java (JOptionPane) y Elixir.
  """

  def show_message(message) do
    try do
      System.cmd("java", ["-cp", "ejercicio1", "Edad.java", message])
    rescue
      e in ArgumentError ->
        IO.puts("Error mostrando mensaje en Java: #{inspect(e)}")
    end
  end


  def input_data(prompt) do
    try do
      {result, _} = System.cmd("java", ["-cp", "ejercicio1", "Edad.java", "input", prompt])
      String.trim(result)
    rescue
      e in ArgumentError ->
        IO.puts("Error obteniendo input de Java: #{inspect(e)}")
        ""
    end
  end


  def input(prompt, :string), do: IO.gets("#{prompt}: ") |> String.trim()

  def input(prompt, :integer) do
    try do
      input(prompt, :string) |> String.to_integer()
    rescue
      ArgumentError ->
        IO.puts("Error: Input no es un entero válido.")
        input(prompt, :integer)
    end
  end

  def input_data(prompt, :float) do
    try do
      input_data(prompt, :string) |> String.to_float()
    rescue
      ArgumentError ->
        IO.puts("Error: Input no es un número real válido.")
        input_data(prompt, :float)
    end
  end


end
