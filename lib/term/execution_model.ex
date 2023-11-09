defmodule Term.ExecutionModel do
  def models() do
    [{:Vertex, 0}, {:TesselationControl, 1}, {:TesselationEvaluation, 2}, {:Geometry, 3}, {:Fragment, 4},
    {:GLCompute, 5}, {:Kernel, 6}, {:TaskNV, 5267}, {:MeshNV, 5268}, {:RayGenerationNV, 5313},
    {:RayGenerationKHR, 5313}, {:IntersectionNV, 5314}, {:IntersectionKHR, 5314}, {:AnyHitNV, 5315},
    {:AnyHitKHR, 5315}, {:ClosestHitNV, 5316}, {:ClosestHitKHR, 5316}, {:MissNV, 5317}, {:MissKHR, 5317},
    {:CallableNV, 5318}, {:CallableKHR, 5318}
    ]
  end

  def id(a) do
    element = Enum.find(models(), fn {atom, _opcode} -> a == atom end)
    if element == nil do
      nil
    else
      {_atom, opcode} = element
      opcode
    end
  end

end
