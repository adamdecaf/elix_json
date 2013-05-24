## JsonPrinter
## Author: Adam Shannon

defmodule JsonPrinter do

  ## Take a keyword array, grab the keys, and then loop
  ## through them printing the nessary json, and recursing
  ## if needed.

  ## Types
  ## boolean, number, string, array, object
  def toJsonStr(obj) do
    keys = Keyword.keys(obj)

    res = List.foldl(keys, "{", fn(key, acc) ->
                                    acc <> toJsonStrHelper(key, obj[key]) <> "," end)
    dropLast(res) <> "}"
  end

  defp toJsonStrHelper(key, value) do
    pretty_print(key, value)
  end

  defp pretty_print(key, value) when is_boolean(value) do
    "\"#{key}\":#{value}"
  end

  defp pretty_print(key, value) when is_number(value) do
    "\"#{key}\":#{value}"
  end

  # Errors caused here!
  defp pretty_print(key, value) when is_bitstring(value) do
    "\"#{key}\":\"#{value}\""
  end

  defp pretty_print(key, value) do
    if (is_object(value)) do
      #"\"#{key}\": #{toJsonStr(value)}"
      "obj"
    else
      lc n inlist value, do: IO.puts "#{to_binary(n)}"
      "list"
    end
  end

  defp is_object(obj) do
    try do
      is_list(obj) and (length(Keyword.keys(obj) == 0))
    rescue
      _ -> false
    end
  end

  defp dropLast(str) do
    Regex.replace(%r/,$/, str, "")
  end
end

## Runner
IO.puts JsonPrinter.toJsonStr([a: 12, b: true, c: "hello"])
# IO.puts JsonPrinter.toJsonStr([a: 12, b: [1,2]])
IO.puts JsonPrinter.toJsonStr([a: 12, b: [c: true, d: "hello"]])
