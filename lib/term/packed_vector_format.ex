defmodule Term.PackedVectorFormat do

  def formats() do
    [
      {:PackedVectorFormat4x8Bit, 0}, {:PackedVectorFormat4x8BitKHR,1}
    ]
  end

  def id(a) do
     element = Enum.find(formats(), fn {atom, _numeric_id} -> atom == a end)
     if element == nil do
      nil
     else
        {_atom, numeric_id} = element
        numeric_id
     end
  end

end
