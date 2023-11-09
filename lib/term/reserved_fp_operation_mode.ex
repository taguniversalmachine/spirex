defmodule Term.ReservedFPOperationMode do

def modes() do
  [
    {:ReservedFPOperationModeIEEE, 0}, {:ReservedFPOperationModeALT, 1}
  ]
end

def id(a) do
  element = Enum.find(modes(), fn {atom, _numeric_id} -> atom == a end)
  if element == nil do
    nil
  else
    {_atom, numeric_id} = element
    numeric_id
  end
end
end
