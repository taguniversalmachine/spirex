defmodule Term.Dim do
  def dims() do
    [{:Dim1D, 0}, {:Dim2D, 1}, {:Dim3D, 2}, {:DimCube, 3}, {:DimRect, 4}, {:DimBuffer, 5},
     {:DimSubpassData, 6}
    ]
  end

  def id(a) do
     element = Enum.find(dims(), fn {identifier, _numeric_identifier} -> a == identifier end)
     if element == nil do
       nil
     else
       {_atom, numeric_identifier} = element
       numeric_identifier
     end
  end

end
