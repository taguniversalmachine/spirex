defmodule Term.ReservedRayQueryIntersection do

def terms() do
  [
      {:RayQueryCandidateIntersecionKHR, 0}, {:RayQueryCommittedIntersectionKHR, 1}
  ]
end


def id(a) do
  element = Enum.find(terms(), fn {atom, _numeric_id} -> a == atom end)
  if element == nil do
    nil
  else
    {_atom, numeric_id} = element
    numeric_id
  end
end

end
