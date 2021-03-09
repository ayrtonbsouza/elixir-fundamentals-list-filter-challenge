defmodule ListFilter do
  def call(list), do: list_filter(list)

  defp isNumber?(number_string) do
    result = Integer.parse(number_string)

    case result do
      {_, _} -> true
      :error -> false
    end
  end

  defp list_filter(list) do
    filtered =
      Enum.filter(list, fn number ->
        isNumber?(number) === true and Kernel.rem(String.to_integer(number), 2) != 0
      end)

    Enum.count(filtered)
  end
end
