defmodule Term.OverflowMode do

  def modes() do
    [
      {:OverflowModeWRAP, 0}, {:OverflowModeSAT, 1}, {:OverflowModeSAT_ZERO, 2}, {:OverflowModeSAT_SYM, 3}
    ]
  end

  def id(a) do
    element = Enum.find(modes(), fn {atom, _} -> a == atom end)
    if element == nil do
       nil
    else
     {_atom, numeric_identifier} = element
     numeric_identifier
    end
 end

end
