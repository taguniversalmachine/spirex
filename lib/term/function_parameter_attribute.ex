defmodule Term.FunctionParameterAttribute do
  def attributes() do
    [
      {:FunctionParameterAttributeZext, 0}, {:FunctionParameterAttributeSext, 1}, {:FunctionParameterAttributeByVal, 2},
      {:FunctionParameterAttributeSret, 3}, {:FunctionParameterAttributeNotAlias, 4}, {:FunctionParameterAttributeNoCapture, 5},
      {:FunctionParameterAttributeNoCapture, 5}, {:FunctionParameterAttributeNoWrite, 6},
      {:FunctionParameterAttributeNoReadWrite, 7}
    ]
  end

  def id(a) do
    element = Enum.find(attributes(), fn {atom, _} -> a == atom end)
    if element == nil do
      nil
    else
      {_atom, numeric_id} = element
      numeric_id
    end
  end
end
