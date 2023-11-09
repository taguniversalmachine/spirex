defmodule Term.ReservedRayFlags do
  def flags() do
    [
      {:ReservedRayFlagsNone, 0x0}, {:ReservedRayFlagsOpaqueKHR, 0x1}, {:ReservedRayFlagsNoOpaqueKHR, 0x2},
      {:ReservedRayFlagsTerminateOnFirstHitKHR, 0x4}, {:ReservedRayFlagsSkipClosestHitShaderKHR, 0x8},
      {:ReservedRayFlagsSkipClosestHitShaderKHR, 0x8}, {:ReservedRayFlagsCullBackFacingTrianglesKHR, 0x10},
      {:ReservedRayFlagsCullFrontFacingTrianglesKHR, 0x20}, {:ReservedRayFlagsCullOpaqueKHR, 0x40},
      {:ReservedRayFlagsCullNoOpaqueKHR, 0x80}, {:ReservedRayFlagsSkipTrianglesKHR, 0x100},
      {:ReservedRayFlagsSkipAABsKHR, 0x200}
    ]
  end

  def id(a) do
    element = Enum.find(flags(), fn {atom, _numeric_id} -> a == atom end)
    if element == nil do
      nil
    else
      {_atom, numeric_id} = element
      numeric_id
    end
  end

end
