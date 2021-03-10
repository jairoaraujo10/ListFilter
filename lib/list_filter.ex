defmodule ListFilter do
  def call(list), do: list_filter(list)

  defp list_filter(list) do
    Enum.count(get_numbers(list), fn x -> rem(x, 2) == 1 end)
  end

  defp get_numbers(list) do
    Enum.flat_map(list, fn list ->
      case Integer.parse(list) do
        {int, _rest} -> [int]
        :error -> []
      end
    end)
  end
end
