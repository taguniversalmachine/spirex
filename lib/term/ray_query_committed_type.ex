defmodule Term.ReservedRayQueryCommittedType do

  def types() do
    [
      {:RayQueryCommittedIntersectionNoneKHR, 0}, {:RayQueryCommittedIntersectionTriangleKHR, 1},
      {:RayQueryCommmittedIntersectionGeneratedKHR, 2}
    ]
  end

  def id(a) do
    element = Enum.find(types(), fn {atom, _numeric_id} -> atom == a end)

    if element == nil do
      nil
    else
      {_atom, numeric_id} = element
      numeric_id
    end

  end


end
