defmodule Term.ReservedRayQueryCandidateType do

def types() do
  [
    {:RayQueryCandidateIntersectionTriangleKHR, 0},
    {:RayQueryCandidateIntersectionAABBKHR, 1}
  ]
end

def id(a) do
  element = Enum.find(types(), fn {atom, _numeric_id} -> a == atom end)
  if element == nil do
    nil
  else
    {_atom, numeric_id} = element
    numeric_id
  end
end

end
