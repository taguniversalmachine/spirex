defmodule Term.SelectionControl do

def masks() do
  [
    {:SelectionControlNone, 0x0}, {:SelectionControlFlatten, 0x1}, {:SelectionControlDontFlatten, 0x2}
  ]
end

def id(a) do
  element = Enum.find(masks(), fn {atom, _} -> a == atom end)
  if element == nil do
    nil
  else
    {_atom, numeric_id} = element
    numeric_id
  end
end

end
