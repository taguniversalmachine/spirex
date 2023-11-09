defmodule Term.ReservedFPDenormMode do

def modes() do
  [
    {:ReservedFPDenormModePreserve, 0}, {:ReservedFPDenormModeFlushToZero, 1}
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
