# input: 3 characters(numbers or alphabet) in string format.
# outputs: double value in the case that input value is number.
#          "error" in the case that any character of the input value is not a number.
defmodule Main do
  def main do
    a = IO.gets("") |> String.trim()
    n = a |> String.graphemes() |> checkint()
    doubleint(a, n) |> IO.puts()
  end
  defp checkone(a), do: a in String.graphemes("0123456789")
  defp checkint([]), do: :true
  defp checkint([head|tail]), do: checkone(head) and checkint(tail)
  #
  defp doubleint(a, :true), do: String.to_integer(a) * 2
  defp doubleint(_, _), do: "error"
end